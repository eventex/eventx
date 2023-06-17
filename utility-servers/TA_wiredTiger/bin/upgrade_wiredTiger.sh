 #! /bin/sh
SPLUNK_HOME=$1
input="/opt/splunk/etc/system/local/server.conf"
is_Set=0
is_stanza_exit=0
end_line="stack_id = free"

 # Stop Splunk
/opt/splunk/bin/./splunk stop


# Edit the storageEngineMigration setting in server.conf
while read line; do
if [ ! -z "$line" ]; then
    if [[ $line == "storageEngineMigration=false" ]] || [[ $line == "storageEngineMigration=true" ]];
    then
        is_Set=1
        echo "--------->Stetting storageEngineMigration=true"
        sed -i 's/storageEngineMigration=false/storageEngineMigration=true/' $input
        break
    elif [[ $line == "[kvstore]" ]];
    then
         is_stanza_exit=1
   else
     end_line=$line
    fi
fi
done < $input

# If the storageEngineMigration does not exit, insert after
if [[ $is_Set -eq 0 ]] && [[ $is_stanza_exit -eq 1 ]];
then
    echo "Inserting storageEngineMigration=true"
    sed -i '/\[kvstore\]/a storageEngineMigration=true' $input
fi

if [[ $is_Set -eq 0 ]] && [[ $is_stanza_exit -eq 0 ]];
then
    echo $end_line
    echo "--------Insert kvstore stanza-------"
    sed -i '/'"$end_line"'/a [kvstore]' $input
    echo "--------Inserting storageEngineMigration=true--------"
    sed -i '/\[kvstore\]/a storageEngineMigration=true' $input
    sed -i '/'"$end_line"'/G' $input
fi

# Starting the migration
echo "Starting the migration"
/opt/splunk/bin/./splunk migrate kvstore-storage-engine --enable-compression --target-engine wiredTiger

# Restart Splunk
/opt/splunk/bin/./splunk start

