#!/bin/bash
echo "Input in format: path searchstr changestr"
 
if [[ -f "$1" ]]; then
  if [[ $2 != "" && $3 != "" ]]; then
	sed -i '' "s/$2/$3/" $1
	time=$(stat -f "%Sm" -t "%Y-%m-%d %H:%M" $1)
	filesize=$(stat -f%z $1)
	sha=$(shasum -a 256 $1 | cut -d ' ' -f 1)
	echo "src/$1 - $filesize - $time - $sha - sha256" >> files.log
	echo "All's done"
  else
	echo "Empty string detected"
  fi
else
	echo "File doesn't exist"
fi
