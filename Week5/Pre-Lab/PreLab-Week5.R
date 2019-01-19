######    PRIMARY RESEARCH QUESTION   ######
#How has the men’s shotput world record changed over time?  
#What about the women’s world record?



######    REFLECT ON THE QUESTION   ######
library(SDSFoundations)
WR <- WorldRecords

table(WR$Event)

WR[WR$Athlete=='Usain Bolt',]

womensMile <- WR[WR$Event=='Womens Mile',]
womensMile



######    ANALYZE THE DATA   ######
mensShotput <- WR[WR$Event=='Mens Shotput',]
womensShotput <- WR[WR$Event=='Womens Shotput',]

#scatterplot
plot(mensShotput$Year, mensShotput$Record, main='Mens Shotput World Records', xlab='Year', ylab='World Record Distance (m)')
plot(womensShotput$Year, womensShotput$Record, main='Womens Shotput World Records', xlab='Year', ylab='World Record Distance (m)')

#actual year
linFit(mensShotput$Year, mensShotput$Record)
linFit(womensShotput$Year, womensShotput$Record)

table(womensShotput$Year) #1948
table(mensShotput$Year) #1948

#starting year == 0
mensShotput$Time <- mensShotput$Year - min(mensShotput$Year)
womensShotput$Time <- womensShotput$Year - min(womensShotput$Year)

#adjusted x-axis (Year)
linFit(mensShotput$Time, mensShotput$Record)
linFit(womensShotput$Time, womensShotput$Record)

cor(mensShotput$Year, mensShotput$Record)
cor(womensShotput$Year, womensShotput$Record)



######    DRAW CONCLUSIONS   ######
#Based on scatterplots of the men’s and women’s world record 
#shotput distance, both of these events follow a strong, 'POSITIVE'
#linear relationship over time. The men’s world record distance increases 
#by an average of '0.134' meters per year, while the women’s record 
#distance increases by an average of '0.234' meters per year. 

#Because the intercept estimate is the value of the record distance 
#when 'YEAR' is equal to 0, it is not interpretable in the context 
#of the problem. Both linear models fit the data well, with R-squared 
#values for the men’s and women’s models equal to '0.941' AND '0.962',
#respectively. 
