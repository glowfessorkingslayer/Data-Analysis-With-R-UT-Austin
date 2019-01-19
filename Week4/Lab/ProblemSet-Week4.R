library(SDSFoundations)
acl <- AustinCityLimits

FBLikes100k <- acl[acl$Facebook.100k == 1,]

table(FBLikes100k$Age.Group)

ctab <- table(acl$Facebook.100k, acl$Age.Group)
prop.table(ctab,1)
prop.table(ctab,2)
