######    PRIMARY RESEARCH QUESTION   ######
#For the 2013 season, Is there a linear relationship between 
#how often a rider placed in the Top 10 and the number of 
#times he stayed on his bull for a full 8 seconds?


######    REFLECT ON THE QUESTION   ######
library(SDSFoundations)
bull <- BullRiders

head(bull)




######    ANALYZE THE DATA   ######
new_bull <- bull[bull$Events13 > 0,]

#first variable of interest
hist(new_bull$Rides13)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)

#second variable of interest
hist(new_bull$Top10_13)
fivenum(new_bull$Top10_13)
mean(new_bull$Top10_13)
sd(new_bull$Top10_13)

plot(new_bull$Rides13, new_bull$Top10_13, xlab='# of rides (2013)', ylab='# of times a rider is placed in Top 10 (2013)')
abline(lm(new_bull$Top10_13~new_bull$Rides13))
cor(new_bull$Rides13, new_bull$Top10_13)

vars <- c("Top10_13", "Rides13")
cor(new_bull[,vars])


hist(bull$Rides13)
median(new_bull$Rides13)

median(new_bull$Top10_13)

which(new_bull$Top10_13==2 & new_bull$Rides13==22)
new_bull[4,]

######    DRAW CONCLUSIONS   ######
#There is a strong 'POSITIVE' linear relationship between the number 
#of 8-second rides a bull rider completed and the total number of 
#times he made it in the Top 10 after the 2013 season, (r = '.917').
#The average number of rides for these bull riders was around '19'.

#There were no significant outliers. One rider appeared to have placed 
#in the top-10 rankings only twice, despite an above-average number of 
#rides. Upon closer inspection, we could see that he did not have a 
#very high 'RIDE PERCENTAGE'  which might account for his few appearances 
#in the Top 10.
