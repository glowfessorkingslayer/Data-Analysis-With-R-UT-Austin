######    PRIMARY RESEARCH QUESTION   ######
#In 2012, which variable had the strongest linear 
#relationship with Earnings: Ride Percentage or Cup Points?


######    REFLECT ON THE QUESTION   ######
library(SDSFoundations)
bull <- BullRiders



######    ANALYZE THE DATA   ######
#data frame w/ rides who completed at least one event in 2012
new_bull12 <- bull[bull$Events12 > 0,]

#histogram of riders' earnings in 2012 (new data frame)
hist(new_bull12$Earnings12)

#descriptive statistics of recent histogram
fivenum(new_bull12$Earnings12)
median(new_bull12$Earnings12)
mean(new_bull12$Earnings12)
sd(new_bull12$Earnings12)
IQR_new_bull12 <- 239935.66 - 66814.33

#correlation matrix of 2012 earnings, ride percentage, & cup points
new_vars <- c("Earnings12", "RidePer12", "CupPoints12")
cor(new_bull12[,new_vars])

#scatterplots of 2012 ride % & cup points (x) v. earnings (y)
plot(new_bull12$RidePer12, new_bull12$Earnings12)
plot(new_bull12$CupPoints12, new_bull12$Earnings12)

#lines of best fit for recent scatterplots, respectively
abline(lm(new_bull12$Earnings12~new_bull12$RidePer12))
abline(lm(new_bull12$Earnings12~new_bull12$CupPoints12))

#identifies 2012 rider w/ max salary
which(new_bull12$Earnings12 == max(new_bull12$Earnings12))
new_bull12[4,]

#data frame w/o extreme earnings outlier
nooutlier <- new_bull12[new_bull12$Earnings12 < 1000000 ,]

#correlation matrix of new data frame
new_vars2 <- c("Earnings12", "RidePer12", "CupPoints12")
cor(nooutlier[,new_vars2])

#scatterplots w/o outlier & w/ new data frame
plot(nooutlier$RidePer12, nooutlier$Earnings12)
plot(nooutlier$CupPoints12, nooutlier$Earnings12)

#lines of best fit w/o outlier & w/ new data frame
abline(lm(nooutlier$Earnings12~nooutlier$RidePer12))
abline(lm(nooutlier$Earnings12~nooutlier$CupPoints12))

######    DRAW CONCLUSIONS   ######
#An initial examination of the relationships between Ride Percentage 
#(RidePer) and Earnings, and Cup Points (CupPoints) and Earnings showed 
#that Cup Points had the 'STRONGER' relationship to Earnings. Ride 
#Percentage and Earnings showed a correlation value of '0.593' while 
#Cup Points and Earnings had a correlation value of '0.657'.

# Visual examination showed an 'OUTLIER'  in both relationships—a rider 
#who has earned over 1 million dollars. Removal of this increased the 
#initial relationship: Ride Percentage and Earnings now had a correlation 
#value of '0.804'  and Cup Points and Earnings had a correlation value of
#'0.893'. 'CUP POINTS'  still had the higher relationship to Earnings. 
#Visual examination showed a 'GOOD LINEAR RELATIONSHIP'  for both Ride 
##Percentage and Cup Points, indicating the correct use of the correlation 
#coefficient.
