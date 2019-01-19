library(SDSFoundations)
WR <- WorldRecords

table(WR$Event)

mensPV <- WR[WR$Event=='Mens Polevault',]

min(mensPV$Record)

since1970 <- mensPV[mensPV$Year>=1970,]

plot(since1970$Year, since1970$Record)

linFit(since1970$Year, since1970$Record)
