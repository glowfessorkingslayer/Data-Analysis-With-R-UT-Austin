library(SDSFoundations)
bike <- BikeData


######    PRE-LAB RANDOM STUFF   ######
#age of the 7th cyclist
bike[7,2]

#user id of daily cyclists
bike$user_id[bike$cyc_freq == 'Daily']

#vector w/ cyclists' times
rider_times <- bike$time

rider_times


#names of columns in data frame 'bike'
names(bike)

######    FEMALE CYCLIST DATA   ######
#speed of female cyclists
bike$speed[bike$gender == 'F']

#data frame w/ female cyclists only
females <- bike[bike$gender == 'F',]

#speed of females who rides < once/month
females$speed[females$cyc_freq == 'Less than once a month']



######    STUDENT CYCLIST DATA   ######
#data frame w/ student cyclists only
student <- bike[bike$student == '1',]

#number of student cyclists
table(bike$student)

#How often student cyclists ride
table(student$cyc_freq)

#vector w/ student cyclists' distance values
distance <- student$distance

#average student cyclist distance
mean(distance)



######    CONCLUSION   ######
#In this Pre-Lab, we examined data on '14' student
#riders. Most of the student riders ( a total of '8'
#out of '14' ) rode their bikes 'DAILY'. On average, the
#students rode about '6.26' miles on each trip.
