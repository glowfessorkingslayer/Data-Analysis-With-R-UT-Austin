######    PRIMARY RESEARCH QUESTION   ######
#How many days do animals spend 
#in the shelter before they are adopted?


######    REFLECT ON THE QUESTION   ######
library(SDSFoundations)
animaldata <- AnimalData

head(animaldata)
table(animaldata)

animaldata[animaldata$Intake.Type == 'Owner Surrender',]



######    ANALYZE THE DATA   ######
table(animaldata$Outcome.Type)
adopted <- animaldata[animaldata$Outcome.Type == 'Adoption',]
hist(adopted$Days.Shelter, main='Days In Shelter of Adopted Animals', xlab="Days In Shelter")

daystoadopt <- adopted$Days.Shelter

hist(daystoadopt, main='Days To Adopt for Adopted Animals', xlab="Days To Adopt", breaks=20)
fivenum(daystoadopt)
mean(daystoadopt)
sd(daystoadopt)
which(animaldata$Days.Shelter == max(daystoadopt))

animaldata[425,]

max(animaldata$Days.Shelter)

mean(adopted$Days.Shelter)


211-29.26471
181.7353/(sd(adopted$Days.Shelter))



######    DRAW CONCLUSIONS   ######
#On average, animals spent fewer than two 'weeks'  in the shelter 
#before being adopted ( 'median' = 13 days, IQR = 30 days). 
#The length of time was highly skewed to the 'right', however.
#The longest period of time an animal was in the shelter was '211'
#days  before being adopted. This animal was a 2-year-old 'dog'
#that entered the shelter injured. The middle 50% of the 
#distribution were adopted between '8' and '38' days.