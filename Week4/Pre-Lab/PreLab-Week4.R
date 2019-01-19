######    PRIMARY RESEARCH QUESTION   ######
#For artists age 30 or older, do female artists play different kinds 
#of music on Austin City Limits than male artists?



######    REFLECT ON THE QUESTION   ######
library(SDSFoundations)
acl <- AustinCityLimits



######    ANALYZE THE DATA   ######
atLeast30 <- acl[acl$Age >= 30,]

genre <- table(atLeast30$Genre)
gender <- table(atLeast30$Gender)
gtab <- table(atLeast30$Genre, atLeast30$Gender)
gtab
gender

barplot(gtab, legend=T, beside=T)

prop.table(genre)
prop.table(gtab, 2)

genre



######    DRAW CONCLUSIONS   ######
#The music played on Austin City Limits was grouped into four genres, 
#including Country, Jazz, Rock and Singer-Songwriter. We wanted to 
#examine only those artists who were age 30 or older. 'ROCK'  was the 
#most frequently played genre, performed by '59.8%' of the Austin City 
#Limits artists. Among female artists, however, only '32.0%' of the 
#artists played Rock music. 

#This difference between the marginal and 'CONDITIONAL' probabilities 
#suggests that gender and genre 'ARE NOT' independent. This difference 
#was also evident in the bar plots, where it was evident that females 
#were more likely to perform in the 'SINGER-SONGWRITER' category than 
#their male counterparts.
