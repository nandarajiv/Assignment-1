#!/bin/bash

clear

# part a
echo "Size of the file is $(wc -c < $1) bytes."

echo
# part b
echo "Number of lines in the file is $(wc -l < $1)."

echo
# part c
echo "Number of words in the file is $(wc -w < $1)."

echo
# part d
input=$1
i=1
while IFS= read -r line
    do
        echo -n "Line No: <$i> - Count of Words: "
        count=$(echo $line | wc -w)
        echo "[$count]"
        #printf "[$line]" | wc -w
       
        ((i=i+1))
    done < "$input"

echo
# part e
grep -wo '[[:alnum:]]\+' $1 | sort | uniq -d -c | awk '{print "Word: <" $2 "> - Count of Repetition: [" $1 "]"}'