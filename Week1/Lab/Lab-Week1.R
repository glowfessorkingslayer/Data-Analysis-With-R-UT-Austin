######    PRIMARY RESEARCH QUESTION   ######
#How many of the cyclists rode daily, 
#how many of these riders were male and how many female, 
#and what what were their average ages?


######    REFLECT ON THE QUESTION   ######
library(SDSFoundations)
bike <- BikeData

#data frame w/ male cyclists only
males <- bike[bike$gender == 'M',]

#vector w/ times of male cyclists
male_times <- males$time

#average of male cyclists' times
mean(male_times)



######    ANALYZE THE DATA   ######
#number of cyclists for each frequency
table(bike$cyc_freq)

#data frame w/ daily riders only
dailyRiders <- bike[bike$cyc_freq == 'Daily',]

#number of female & male daily riders
table(dailyRiders$gender)

#average age of daily riders
mean(dailyRiders$age)

#separate data frames for male & female daily riders
malesDaily <- dailyRiders[dailyRiders$gender == 'M',]
femalesDaily <- dailyRiders[dailyRiders$gender == 'F',]

#separate average ages for each male & female daily rider data frame
mean(malesDaily$age)
mean(femalesDaily$age)

#data frame w/ cyclists 30 and older
thirty <- malesDaily[malesDaily$age >= 30,]

#number of male daily riders 30 and older
table(thirty$gender)



######    CONCLUSION    ######
#In this lab, we examined data on '47' daily riders.
#Most of the daily riders (a total of '38') were male.
#The average age of all daily riders was '33.7'.
#The average age of female daily riders was '32.6',
#while the average age of male daily riders was '33.9'.