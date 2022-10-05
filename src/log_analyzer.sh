#!/bin/bash
tmp_path=""
tmp_sha=""
cnt=0
if [[ -f $1 ]]; then
	while read line;
	do
		word_count=$(echo $line | wc -w )
		tire_count=$(echo $line | grep -o "-" | wc -l)
		if [[ $word_count -ne 10 && $tire_count -ne 6 ]]; then
   			echo "File is incorrect"
   			exit
 		fi
		let "cnt+=1"
		tmp_path=$tmp_path" "$(echo $line | cut -d'-' -f1)
		tmp_sha=$tmp_sha" "$(echo $line | cut -d'-' -f6)
	done < $1
	cnt_path=$(echo $tmp_path | tr ' ' '\n' | sort -u | wc -l | tr -d ' ')
	cnt_sha=$(echo $tmp_sha | tr ' ' '\n' | sort -u | wc -l | tr -d ' ')
	echo "$cnt $cnt_path $cnt_sha"
else
    echo "There is no file"
fi