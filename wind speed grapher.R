#Aaron Sun | Wind Speed Grapher
library(zoo) 

DaytimeData
attach(DaytimeData)

#choose column with data
DaytimeData$spd <- DaytimeData$column1

#convert to numeric
DaytimeData$spd <- as.character(as.factor(DaytimeData$spd))
DaytimeData$spd <- as.numeric(as.character(DaytimeData$spd))
DaytimeData$Dates <- DaytimeData$timestamp

#DATAWinter <- DaytimeData[5: 1, ] 
#DATASpring <- DaytimeData[5: 17905, ]
DATASummer <- DaytimeData[5: 17905, ]
#DATAFall <- DaytimeData[]

#Winter Graphs
#png("Meadow Baywinter_dayspd_linegraph.png")
#
#plot(zoo(DATAWinter$spd,as.Date(DATAWinter$Dates,"%Y-%m-%d %H")),
#     xlab="Time", ylab="Wind Speed (m/s)", ylim = c(0,30), 
#     main="Meadow Bay Daytime Wind Speed Winter (Dec, Jan, Feb)")
#
#dev.off()
#
#png("Meadow Baywinter_dayspd_frequencies.png")
#
#hist(DATAWinter$spd, xlim = c(0,30), ylim = c(0,30000), 
#     main = "Meadow Bay Daytime Wind Speed Freq. Winter (Dec, Jan, Feb)",
#     xlab = "Wind Speed (m/s)", ylab = "Frequency", 
#     col = "lightgreen")
#
#
#dev.off()

#Spring Graphs

#png("Meadow Bayspring_dayspd_linegraph.png")

#plot(zoo(DATASpring$spd,as.Date(DATASpring$Dates,"%Y-%m-%d %H")),
#     xlab="Time", ylab="Wind Speed (m/s)", ylim = c(0,30), 
#     main="Meadow Bay Daytime Wind Speed Spring (Mar, Apr, May)")

#dev.off()

#png("Meadow Bayspring_dayspd_frequencies.png")

#hist(DATASpring$spd, xlim = c(0,30), ylim = c(0,20000), 
#     main = "Meadow Bay Daytime Wind Speed Freq. Spring (Mar, Apr, May)",
#     xlab = "Wind Speed (m/s)", ylab = "Frequency", 
#     col = "lightgreen")

#dev.off()

#Summer Graph

png("BR3 Baysummer_dayspd_linegraph.png")

plot(zoo(DATASummer$spd,zoo::as.Date(DATASummer$Dates,"%Y-%m-%d %H")),
     xlab="Time", ylab="Wind Speed (m/s)", ylim = c(0,30), 
     main="BR3 Daytime Wind Speed Summer (Jun, Jul, Aug)")

dev.off()

png("BR3 Baysummer_dayspd_frequencies.png")

hist(DATASummer$spd, xlim = c(0,30), ylim = c(0,10000), 
     main = "BR3 Daytime Wind Speed Freq. Summer (Jun, Jul, Aug)",
     xlab = "Wind Speed (m/s)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Fall Graph

#png("BR1fall_dayspd_linegraph.png")

#plot(zoo(DATAFall$spd,as.Date(DATAFall$Dates,"%Y-%m-%d %H")),
#     xlab="Time", ylab="Wind Speed (m/s)", ylim = c(0,30), 
#     main="BR1 Daytime Wind Speed Fall (Sep, Oct, Nov)")

#dev.off()

#png("BR1fall_dayspd_frequencies.png")

#hist(DATAFall$Spd, xlim = c(0, 30), ylim = c(0,20000), 
#     main = "BR1 Daytime Wind Speed Freq. Fall (Sep, Oct, Nov)",
#     xlab = "RWind Speed (m/s)", ylab = "Frequency", 
#     col = "lightgreen")

#dev.off()
