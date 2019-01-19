######    PRIMARY RESEARCH QUESTION   ######
#Among male artists, is there an association between 
#winning a Grammy award and the genre of music that you play?



######    REFLECT ON THE QUESTION   ######
library(SDSFoundations)
acl <- AustinCityLimits



######    ANALYZE THE DATA   ######
#data frame w/ male artists only
males <- acl[acl$Gender == 'M',]

#contingency table of Grammy & Genre variables
ctab <- table(males$Grammy, males$Genre)
ctab

#proportion table of rows
prop.table(ctab,1)

#proportion table of columns
prop.table(ctab,2)

#side-by-side bar plot of ctab
barplot(ctab, legend=T, beside=T)



######    DRAW CONCLUSIONS   ######
#There 'IS' an association between winning a Grammy and the 
#Genre of music an artist plays. The probability of winning a 
#Grammy, regardless of Genre, is '43.21%'. However, examination 
#of a 'CONTINGENCY'  table containing both Grammy and Genre 
#showed that the 'CONDITIONAL' probability of winning a Grammy 
#changes by genre. 

#If an artist is in the Country Genre, the conditional probability 
#of winning a Grammy is '63.64%', while if an artist is in the
#'SINGER-SONGWRITER' Genre, the conditional probability of winning 
#a Grammy is 28.6%. Visual examination of the barplot shows the 
#conditional probabilities of winning a Grammy are 'NOT EQUAL'
#across Genres.
