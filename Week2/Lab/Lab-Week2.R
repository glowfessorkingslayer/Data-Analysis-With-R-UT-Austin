######    PRIMARY RESEARCH QUESTION   ######
#Compare the weight of adult cats and dogs at the shelter.  
#How typical would it be to find a 13-pound cat?  
#What about a 13-pound dog?


######    REFLECT ON THE QUESTION   ######
library(SDSFoundations)
animaldata <- AnimalData



######    ANALYZE THE DATA   ######
#displays first few cases (used for variable names/types)
head(animaldata)

#frequency of each age
table(animaldata$Age.Intake)

#dataframe w/ adult animals
adults <- animaldata[animaldata$Age.Intake >= 1,]

#frequency of adult dogs & cats
table(adults$Animal.Type)

#vector w/ adult animals' weights
adultweights <- adults$Weight

#histogram of adult animals' weights w/ proper title & x-axis label
hist(adultweights, main='Weights of Adult Cats & Dogs', xlab='Weight (in pounds)')

#five-number summary for adult animals' weights
fivenum(adultweights)

#measures of spread & center; skewed distribution: IQR & median
adultIQR <- 49-9.3
adultmedian <- median(adultweights)

#data frame w/ adult dogs & cats, respectively
adultdogs <- adults[adults$Animal.Type == 'Dog',]
adultcats <- adults[adults$Animal.Type == 'Cat',]

#vector w/ adult dogs' & cats' weigts, respectively
adultdogsweight <- adultdogs$Weight
adultcatsweight <- adultcats$Weight

#histogram of adult dogs' & cats' weights, respectively
hist(adultdogsweight)
hist(adultcatsweight)

#five-num summary of adult dogs' & cats' weights, respectively
fivenum(adultdogsweight)
fivenum(adultcatsweight)

#measures of spread & center for adult dogs' weights; skewed distribution: IQR & median
adultdogsIQR <- 54-13.50
adultdogsmedian <- median(adultdogsweight)

#measures of spread & center for adult cats' weights; normal distribution: SD & mean
adultcatsSD <- sd(adultcatsweight)
adultcatsmean <- mean(adultcatsweight)

#z-score of 13-pound cat
catZScore <- (13 - adultcatsmean)/(adultcatsSD)

#quartile of 13-pound dog
fivenum(adultdogsweight)

#proportion of adult cats that weigh > 13 lbs
1-pnorm(catZScore)

#95% of the adults cats' weights
adultcatsmean - (adultcatsSD * 2)
adultcatsmean + (adultcatsSD * 2)



######    DRAW CONCLUSIONS   ######
#The distribution of adult cats in the shelter is 'roughly symmetric' with
#a 'mean' of 8.6 pounds and a standard deviation of '1.9' pounds. About 
#95% of adult cats at the shelter weigh between '4.8' and '12.4' pounds.

#The distribution of adult dogs in the shelter is 'positively skewed', with
#a median of 35.3 pounds and an IQR of 40.4 pounds. Half of the dogs at the 
#shelter do weigh much more, including one that weighs '131.00'. As the two 
#distributions are to be compared, and one distribution is skewed, the data 
#shows that the median weight for both groups is '8.5' for cats and 35.3
#for dogs.

#A 13-pound cat 'would not' be typical at the shelter. On the other hand, 
#about 75% of all dogs at the shelter weigh more than 13 pounds. Overall, 
#the distributions of weights for adult cats and adult dogs at the shelter 
#differ both in shape and in measures of center and spread. 
#Cats generally weigh less and have 'less' variation in their weights 
#than dogs, while dogs tend to weigh more and have 'more' variability.