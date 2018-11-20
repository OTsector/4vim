#!/bin/bash

cat $1 \
	|sed 's/     /\t/g' \
	|sed 's/    /\t/g' \
	|sed 's/   /\t/g' \
	|sed 's/  /\t/g' \
	|sed 's/\t /\t/g' \
	|sed 's/\/\/.*//g' \
	|sed 's/\# .*//g' \
	|awk -vRS='*/' '{gsub(/\/\*.*/,"")}1' \
	|awk '{ gsub("==begin*.*==end", "") ; print $0 }'
	

