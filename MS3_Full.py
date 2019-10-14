def splitRoute():									#creates an empty list
 route = []
 #f=open('http://www.mdl.nws.noaa.gov/~naefs_ekdmos/text/naefs_tempcdf_00.txt/','r')	#grab the txt file and opens it
 #f=open('http://www.ems.psu.edu/~young/meteo473/Data/EKDMOS00.txt/','r') 
 f=open("/home/meteo/sdg152/Meteo_473/MS3/AllStations.txt","r")
 for line in f.readlines():
  line = line.strip('>')
  line = line.replace("\t","")
  line = line.replace("\n","")
  apple = line.split();
  route.append([apple])
 f.close()
 return route

paul = []
paul = splitRoute()	
Temp = paul[16][0]
print Temp[2]
Temp[:2] = Temp[4]+(2*(Temp[3]-Temp[4]))
Temp[:15] = Temp[13]+(2*(Temp[14]-Temp[13]))	
#station = raw_input('What station model would you like to evaluate?') 			#obtains user input
#print 'Pick a day between {} and {}'.format(paul[2][0], paul[76][0])
#print 'The date is in the format yyyymmddhh'
#day = raw_input('Which day/time would you like to evaluate?')

#import re
#if re.search("station", route)								#search list route for user input station
# station=[]										#puts user specified station in list called station
#if re.search('day',station)								#search list station for user input day
# Temp=[]										#puts user specified hour in list called Temp
# print Temp[2],Temp[3],Temp[4],Temp[5],Temp[12],Temp[13],Temp[15]
 #the line is indexed.. date station,05,10,20,30,40,50,60,70,80,90,95,average,sd
 #						#linear extrapolation for the 00 value
#the line is indexed.. date station,00,05,10,20,30,40,50,60,70,80,90,95,average,sd
 #					#linear extrapolation for the 100 value
#the line is indexed.. date station,00,05,10,20,30,40,50,60,70,80,90,95,1h,average,sd		
#we will use values between 3 and 15 
#maybe this is where the rest of the stuff goes
#print Temp[2],Temp[3],Temp[4],Temp[5],Temp[12],Temp[13],Temp[15]

#reference stuff
#def splitRoute():
#  route = []
#  for line in open("route.txt","r").readlines():
#    line = line.replace("\r","")
#    line = line.replace("\n","")
#    line = string.split(line, '>')
#    route.append(line) 
#  return route


#row = []
#crimefile = open(fileName, 'r')
#for line in crimefile.readlines():
#    row.append([line])
#    for i in line.split(","):
#        row[-1].append(i)
