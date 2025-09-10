#!/bin/bash

log_file="/tmp/exec_log.txt"

if [ ! -f "$log_file" ]; then
	touch "$log_file"
fi


count=$(awk "END {print NR}" "$log_file")

last_line=$(tail -n 1 "$log_file")
user_time=$(echo "$last_line")

if [ $count -eq 0 ]; then
	echo "total number of users executed this script was: 0"
else
	echo "last user who executed this script at time -> $user_time"
	echo "total executable counts are: $count"
fi

username=$(whoami)

date_time=$(date "+%Y-%m-%d %H:%M:%S")

echo "$username,$date_time" >> "$log_file"
