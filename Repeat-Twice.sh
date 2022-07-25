#!/bin/bash/ -x


count=0
for ((i=10 ; i < 100 ; i++ ))
do
    if [ $((i%10)) -eq   $(((i/10)%10)) ]
    then
        repeatedNumberArray[((count++))]=$i
    fi

done

echo "Repeated number is ${repeatedNumberArray[@]}"
