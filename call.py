print "enter your data priority: e=emergent r=routine "
print "enter your data type: a=abdominal pain t=trauma s=sick person u=unknown problems"
print "enter your data transport: f=finley m=mercy    "
print "-----------------------------------------------"
print "example e a m"

priority, type, transport = raw_input ("example e a m: ").split()
#read priority type transport

#priority- this section will have information regarding dispatch
if priority == "e":
	print "emergent"
	priorityprime = "Dispatch: At 12:00 dispatch requested an emergent response from Medic 551 for a patient with abdominal pain. Medic 551 responded without incident or delay. Patient presented in a single family dwelling. "
else:
	print "routine"
	priorityprime = "Dispatch: At 12:00 dispatch requested a routine response from Medic 551 for $chicom. Medic 551 responded without incident or delay. Patient presented in a single family dwelling. "
	
	
	
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
else:
	print "unknown problem"
	with open('default.txt', 'r') as file:
		typeprime = file.read()
		


#Transport- this is the section for different hospitals

if transport == "f":
	print "finley"
	transportprime = "Patient was transported routine to Finley hospital. Patient was moved from cot to bed using a sheet carry method. Patient care was transfered over to nurse"
else:
	print "mercy"
	transportprime = "Patient was transported routine to Mercy hospital. Patient was moved from cot to bed using a sheet carry method. Patient care was transfered over to nurse "

#print (priorityprime)
#print "(y)"
#print "(z)"

print priorityprime + typeprime + transportprime