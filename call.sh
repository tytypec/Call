#!/bin/bash

#This is a file to help me write my patient care reports for class.
#To use it you type in the metrics I have outlined and it will give you a template to operate off of.

nnm=$((1 + RANDOM % 10))
#echo $nnm

if [ $nnm = "1" ]; then
	NURSE="Kelly"
elif [ $nnm = "2" ]; then
	NURSE="Ashton"
elif [ $nnm = "3" ]; then
	NURSE="Ken"
elif [ $nnm = "4" ]; then
	NURSE="Ashley"
elif [ $nnm = "5" ]; then
	NURSE="Nicole"
elif [ $nnm = "6" ]; then
	NURSE="Amanda"
elif [ $nnm = "7" ]; then
	NURSE="Mike"
elif [ $nnm = "8" ]; then
	NURSE="Kim"
else
	NURSE="Marge"
fi

echo "enter your data priority: e=emergent r=routine "
echo "enter your data type: a=abdominal pain t=trauma s=sick person"
echo "enter your data transport: f=finley m=mercy    "
echo "-----------------------------------------------"
echo "example e a m"
read priority type transport

if [ $priority = "e" ]; then 
	echo "Dispatch: At _____ dispatch requested an emergent response from Medic 551 for a ________. Medic 551 responded without incident or delay. Patient presented in a single family dwelling.
"
else
	echo "Dispatch: At _____ dispatch requested a routine response from Medic 551 for a ________. Medic 551 responded without incident or delay. Patient presented in a single family dwelling.
"
fi

if [ $type = "a" ]; then 
	echo "$(<apain.txt)"
elif [ $type = "t" ]; then
	echo "$(<tram.txt)"
elif [ $type = "s" ]; then 
	echo "$(<sickper.txt)"
else
echo "default"
fi



if [ $transport = f ]; then
	echo "Patient was transported routine to Finley hospital. Patient was moved from cot to bed using a sheet carry mehtod. Patient care was transfered over to" "$NURSE"
else
echo "Patient was transported routine to Finley hospital. Patient was moved from cot to bed using a sheet carry mehtod. Patient care was transfered over to" "$NURSE"
fi

