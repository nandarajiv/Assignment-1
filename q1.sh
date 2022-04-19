#!/bin/bash

grep -v '^$' $1

echo 
echo

cat $1|awk '!seen[$0]++'|grep -v '^$'