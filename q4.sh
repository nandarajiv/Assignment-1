#!/bin/bash

echo -n "Enter input data: "

IFS=',' read -r -a inarray
#echo "${inarray[*]}"

size=${#inarray[@]}

for ((i=0; i<$size; i++))
    do
        for ((j=0; j<$size-i-1; j++))
            do
                if [ ${inarray[j]} -gt ${inarray[$((j+1))]} ]
                then
                    temp=${inarray[$j]}
                    inarray[$j]=${inarray[$((j+1))]}
                    inarray[$(($j+1))]=$temp
                fi
            done
        
    done

echo
echo -n "Ascending Order: "


for ((i=0; i<$size; i++))
    do
        echo -n "${inarray[$i]} "
    done