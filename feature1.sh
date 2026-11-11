#Feature1: calculate the current task in the to do list by Brayan Escobar

#!/bin/bash

total=0
completed=0

while IFS='|' read -r task status
do
    if [ "$status" = "completed" ] || [ "$status" = "pending" ]
    then
        total=$((total + 1))
    fi

    if [ "$status" = "completed" ]
    then
        completed=$((completed + 1))
    fi
done < tasks.txt

if [ "$total" -gt 0 ]
then
    percentage=$((completed * 100 / total))
else
    percentage=0
fi

echo "Total tasks: $total"
echo "Completed tasks: $completed"
echo "Completion: $percentage%"
