#!/bin/bash

cat $1 | grep -v '^$' | awk -F'~' '{print $2 " once said, \"" $1 "\""}' > speech.txt