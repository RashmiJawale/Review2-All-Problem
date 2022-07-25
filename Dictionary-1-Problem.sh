#!/bin/bash

declare -A diceDictionary

breakCondition=0
while(( $breakCondition == 0 ))
do	
	diceValue=$(( ( RANDOM % 6 )  + 1 ))
	echo $diceValue
	
	count=$(( ${diceDictionary[$diceValue]} ))
	if [ $count == 9 ]
	then		
		diceDictionary[$diceValue]=$(( count + 1 ))
		breakCondition=1
	else
		diceDictionary[$diceValue]=$(( count + 1 ))
	fi
done

minValue=0;
maxValue=0;
minValueDiceIs=0;
maxValueDiceIs=0;

for (( dice=1; dice<=6; dice++ ))
do
	echo "No of occurences of dice will be $dice ==> ${diceDictionary[$dice]}"	
	if [ $dice -eq 1 ]
	then
		minValue=${diceDictionary[$dice]}
		maxValue=${diceDictionary[$dice]}		
	fi
	NewValue=${diceDictionary[$dice]}

	if [ $NewValue -lt $minValue ]
	then
		minValueDiceIs=$dice
	fi
	
	if [ $NewValue -gt $maxValue ]
	then
		maxValueDiceIs=$dice
	fi
done

echo "Dice which appeared max times ==> $maxValueDiceIs"
echo "Dice which appeared min times ==> $minValueDiceIs"
