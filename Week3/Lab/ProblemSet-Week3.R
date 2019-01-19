library(SDSFoundations)
bull <- BullRiders
new_bull <- bull[bull$Rides14 > 0,]

#rides per event in 2014
RidesPerEvent14 <- new_bull$Rides14/new_bull$Events14

fivenum(RidesPerEvent14)

plot(RidesPerEvent14, new_bull$Rank14)
abline(lm(new_bull$Rank14~RidesPerEvent14))

cor(RidesPerEvent14, new_bull$Rank14)
