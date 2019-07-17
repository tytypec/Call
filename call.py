print "enter your data priority: e=emergent r=routine "
print "enter your data type: a=abdominal pain t=trauma s=sick person o=overdose d=diabetic problems u=unknown problems"
print "enter your data transport: f=finley m=mercy    "
print "-----------------------------------------------"

priority, type, transport = raw_input ("example e a m: ").split()
#read priority type transport

#time stamp for time of call
import time
t = time.localtime()
current_time = time.strftime("%H:%M", t)
print(current_time)




if type == "a":
	chicom = "a patient with abdominal pain"
elif type == "t":
	chicom = "a patient suffering from a traumatic injury"
elif type == "s":
	chicom = "a sick person"
elif type == "d":
	chicom = "a diabetic emergency"
elif type == "o":
	chicom = "an overdose"
else:
	chicom = "an unknown problem"
	
#random number generation for the nurses name	
from random import randrange
random = (randrange(10))

if random == 0:
	nursename = " Kim "
elif random == 1:
	nursename = " Ashley "	
elif random == 2:
	nursename = " Ashton "
elif random == 3:
	nursename = " Alex "
elif random == 4:
	nursename = " Mary "
elif random == 5:
	nursename = " Taylor "
elif random == 6:
	nursename = " Kimberly "
elif random == 7:
	nursename = " Steph "
elif random == 8:
	nursename = " Olivia "
else:
	nursename = " Andy "
	

#priority- this section will have information regarding dispatch
if priority == "e":
	print "emergent"
	priorityprime = "Dispatch: At " + current_time + " dispatch requested an emergent response from Medic 551 for " + chicom + ". Medic 551 responded without incident or delay. Patient presented in a single family dwelling. "
else:
	print "routine"
	priorityprime = "Dispatch: At " + current_time + " dispatch requested a routine response from Medic 551 for  " + chicom + ". Medic 551 responded without incident or delay. Patient presented in a single family dwelling. "
	
	
	
#Incident type- this section pulls from text files that have a template of different types of incidents	
if type == "a":
	print "abdominal pain"
	with open('apain.txt', 'r') as file:
		typeprime = file.read()
elif type == "t":
	print "trauma"
	with open('tram.txt', 'r') as file:
		typeprime = file.read()
elif type == "s":
	print "sick person"
	with open('sickper.txt', 'r') as file:
		typeprime = file.read()
elif type == "d":
	print "diabetic problems"
	with open('diabetic.txt', 'r') as file:
		typeprime = file.read()
elif type == "o":
	print "overdose"
	with open('overdose.txt', 'r') as file:
		typeprime = file.read()
else:
	print "unknown problem"
	with open('default.txt', 'r') as file:
		typeprime = file.read()
		


#Transport- this is the section for different hospitals

if transport == "f":
	print "finley"
	transportprime = "Patient was transported routine to Finley hospital. Patient was moved from cot to bed using a sheet carry method. Patient care was transfered over to nurse" + nursename
else:
	print "mercy"
	transportprime = "Patient was transported routine to Mercy hospital. Patient was moved from cot to bed using a sheet carry method. Patient care was transfered over to nurse " + nursename

#print (priorityprime)
#print "(y)"
#print "(z)"

#print priorityprime + typeprime + transportprime

finalprint = priorityprime + typeprime + transportprime

print finalprint 

#xclip -selection clipboard
#print random