#Feature2: Calculate the next available task in the to do list by Brayan Escobar

#!/bin/bash

while IFS='|' read -r task status
do
    if [ "$status" = "pending" ]
    then
        echo "Next available task: $task"
        exit 0
    fi
done < tasks.txt

echo "No pending tasks."
