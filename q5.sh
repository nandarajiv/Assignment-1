#!/bin/bash

echo -n "Enter the input string: "
read -r word

echo

#echo $word

length=${#word}
#echo $length

for ((i=$((length-1)); i>-1; i--));
    do
        newword=$newword${word:$i:1}
    done

echo "The reversed input string is: $newword"

instring=$newword
echo -n "The string with subsequent letters: "
echo $instring|tr "0-9a-zA-Z" "1-90b-zaB-ZA"


num_letters=${#word}

#echo $num_letters

revhalf=$(echo "${word:0:num_letters/2}")
normalhalf=$(echo "${word:num_letters/2:num_letters/2}")

rev_half_num_letters=${#revhalf}
#echo $rev_half_num_letters

i=$((rev_half_num_letters-1))

while [ $i -gt -1 ]
    do
        newhalf=$newhalf${word:$i:1}
        i=$((i-1))
    done

#echo $newhalf

answer="$newhalf$normalhalf"


echo "The string with half reversed: $answer"