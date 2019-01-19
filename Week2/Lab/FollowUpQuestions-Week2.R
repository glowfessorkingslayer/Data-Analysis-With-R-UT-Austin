######    FOLLOW UP LAB QUESTIONS   ######
library(SDSFoundations)
animaldata <- AnimalData


#1a.) most common way dogs arrived in shelter
dogs <- animaldata[animaldata$Animal.Type == 'Dog',]
table(dogs$Intake.Type)

#1b.) proportion of dogs that arrived as an owner surrender
81/291

#1c.) number of owner surrendered dogs that were returned to owner
ownersurrenderdogs <- dogs[dogs$Intake.Type == 'Owner Surrender',]
table(ownersurrenderdogs$Outcome.Type)

#1d.) mean number of days in shelter of owner surrendered dogs returned to owner
returned <- ownersurrenderdogs[ownersurrenderdogs$Outcome.Type == 'Return to Owner',]
mean(returned$Days.Shelter)



1-pnorm(4.5,6.7,1.1)
