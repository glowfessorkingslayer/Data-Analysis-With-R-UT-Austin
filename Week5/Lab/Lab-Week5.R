######    PRIMARY RESEARCH QUESTION   ######
#How have world record times for the men's and women's 
#mile event changed over the years?



######    REFLECT ON THE QUESTION   ######
library(SDSFoundations)
WR <- WorldRecords

table(WR$Event)

#data frame w/ mens/womens mile times respectively
mensMile <- WR[WR$Event=='Mens Mile',]
womensMile <- WR[WR$Event=='Womens Mile',]

######    ANALYZE THE DATA   ######
#scatterplot of Year vs. Record Distance (Mens)
plot(mensMile$Year, mensMile$Record, main='Mens Mile Record Times', xlab='Year', ylab='Record Times (sec)')

#scatterplot of Year vs. Record Distance (Womens)
plot(womensMile$Year, womensMile$Record, main='Womens Mile Record Times', xlab='Year', ylab='Record Times (sec)')

#best fit line of Year vs. Mens Mile
linFit(mensMile$Year, mensMile$Record)

#best fit line of Year vs. Womens Mile
linFit(womensMile$Year, womensMile$Record)

#correlation of mens & womens miles respectively
cor(mensMile$Year, mensMile$Record)
cor(womensMile$Year, womensMile$Record)

#adjusting actual year to # of year
mensMile$Time <- mensMile$Year - min(mensMile$Year)
womensMile$Time <- womensMile$Year - min(womensMile$Year)

#best fit line w/ adjusted x-axis
linFit(mensMile$Time, mensMile$Record)
linFit(womensMile$Time, womensMile$Record)

######    DRAW CONCLUSIONS   ######
#Based on scatterplots of the men’s and women’s world record 
#mile event, both of these events follow a strong, 'NEGATIVE'
#relationship over time. For both groups, the assumption of 
#linearity appears to be satisﬁed. The men’s world record mile 
#time decreases by an average of '0.393' seconds per year, while 
#the women's record distance decreases by an average of '0.973' 
#seconds per year. 

#Because the 'INTERCEPT' estimate is the value of the record time 
#when year is equal to 0, it is not interpretable in the context 
#of the problem. Both linear models ﬁt the data well, with R-squared 
#values for the men's and women's models equal to '0.977' and '0.896',
#respectively. For the men's world record, 97.7% of the 'VARIANCE' is 
#explained by the linear model of year, while for the female world 
#record, 89.6% of the 'VARIANCE' in performance can be explained by 
#the linear model of year.
