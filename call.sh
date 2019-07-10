#!/bin/bash

#This is a file to help me write my patient care reports for class.
#To use it you type in the metrics I have outlined and it will give you a template to operate off of.
time=$(date +%T)

nnm=$((1 + RANDOM % 10))
posrn=$((1 + RANDOM % 4))
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


#this arguement will fill the chief complaint section of the form
if [ $type = "a" ]; then 
	chicom="a patient with abdominal pain"
elif [ $type = "t" ]; then
	chicom="a patient suffering from a traumatic injury"
elif [ $type = "s" ]; then 
	chicom="a sick person"
else
	chicom="an unknown issue"
fi


if [ $posrn = "1" ]; then
	POSITION="Patient presented in an apartment style dwelling sitting in chair in room."
elif [ $posrn = "2" ]; then
	POSITION="Patient presented in a single family dwelling supine on floor."
elif [ $posrn = "3" ]; then
	POSITION="Patient presented in an apartment style dwelling sitting in chair in room"
else
	POSITION="Patient presented in a single family dwelling sitting in chair."
fi


#ths section will fill the dispatch section of the form
if [ $priority = "e" ]; then 
	echo "Dispatch: At $time dispatch requested an emergent response from Medic 551 for $chicom. Medic 551 responded without incident or delay. $POSITION
"
else
	echo "Dispatch: At $time dispatch requested a routine response from Medic 551 for $chicom. Medic 551 responded without incident or delay. $POSITION
"
fi


#this section will fill the assessment and treatment
if [ $type = "a" ]; then 
	echo "$(<apain.txt)"
elif [ $type = "t" ]; then
	echo "$(<tram.txt)"
elif [ $type = "s" ]; then 
	echo "$(<sickper.txt)"
elif [ $type = "c" ]; then 
	echo "$(<chestpain.txt)"
else
	echo "$(<default.txt)"
fi



if [ $transport = f ]; then
	echo "Patient was transported routine to Finley hospital. Patient was moved from cot to bed using a sheet carry method. Patient care was transfered over to" "$NURSE"
else
	echo "Patient was transported routine to Mercy hospital. Patient was moved from cot to bed using a sheet carry method. Patient care was transfered over to" "$NURSE"
fi

#Having Trouble figuring out how to copy to clipboard. SHOOT
#xclip -o > callout.txt

#echo "$(<callout.txt)" | xclip -selection clipboard"


#echo xclip -selection c
#echo  | xclip -sel clip
#xclip -selection clipboard -o