#Aaron Sun | Wind Speed Grapher
library(zoo) 

DATA <- NighttimeData
attach(DATA)

#choose column with data
DATA$spd <- DATA$V3

#convert to numeric
DATA$spd <- as.character(as.factor(DATA$spd))
DATA$spd <- as.numeric(as.character(DATA$spd))

#DATAWinter <- DATA[5: 18729, ] 
DATASpring <- DATA[3: 26904, ]
DATASummer <- DATA[26905: 45299, ]
#DATAFall <- DATA[]

#Winter Graphs
#png("Meadow Baywinter_nightspd_linegraph.png")
#
#plot(zoo(DATAWinter$spd,as.Date(DATAWinter$Dates,"%Y-%m-%d %H")),
#     xlab="Time", ylab="Wind Speed (m/s)", ylim = c(0,30), 
#     main="Meadow Bay Nighttime Wind Speed Winter (Dec, Jan, Feb)")
#
#dev.off()
#
#png("Meadow Baywinter_nightspd_frequencies.png")
#
#hist(DATAWinter$spd, xlim = c(0,30), ylim = c(0,30000), 
#     main = "Meadow Bay Nighttime Wind Speed Freq. Winter (Dec, Jan, Feb)",
#     xlab = "Wind Speed (m/s)", ylab = "Frequency", 
#     col = "lightgreen")
#
#dev.off()

#Spring Graphs

png("Meadow Bayspring_nightspd_linegraph.png")

plot(zoo(DATASpring$spd,as.Date(DATASpring$Dates,"%Y-%m-%d %H")),
     xlab="Time", ylab="Wind Speed (m/s)", ylim = c(0,30), 
     main="Meadow Bay Nighttime Wind Speed Spring (Mar, Apr, May)")

dev.off()

png("Meadow Bayspring_nightspd_frequencies.png")

hist(DATASpring$spd, xlim = c(0,30), ylim = c(0,20000), 
     main = "Meadow Bay Nighttime Wind Speed Freq. Spring (Mar, Apr, May)",
     xlab = "Wind Speed (m/s)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Summer Graph

png("Meadow Baysummer_nightspd_linegraph.png")

plot(zoo(DATASummer$spd,as.Date(DATASummer$Dates,"%Y-%m-%d %H")),
     xlab="Time", ylab="Wind Speed (m/s)", ylim = c(0,30), 
     main="Meadow Bay Nighttime Wind Speed Summer (Jun, Jul, Aug)")

dev.off()

png("Meadow Baysummer_nightspd_frequencies.png")

hist(DATASummer$spd, xlim = c(0,30), ylim = c(0,20000), 
     main = "Meadow Bay Nighttime Wind Speed Freq. Summer (Jun, Jul, Aug)",
     xlab = "Wind Speed (m/s)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Fall Graph

#png("Meadow Bayfall_nightspd_linegraph.png")

#plot(zoo(DATAFall$spd,as.Date(DATAFall$Dates,"%Y-%m-%d %H")),
#     xlab="Time", ylab="Wind Speed (m/s)", ylim = c(0,30), 
#     main="Meadow Bay Nighttime Wind Speed Fall (Sep, Oct, Nov)")

#dev.off()

#png("Meadow Bayfall_nightspd_frequencies.png")

#hist(DATAFall$Spd, xlim = c(0, 30), ylim = c(0,20000), 
#     main = "Meadow Bay Nighttime Wind Speed Freq. Fall (Sep, Oct, Nov)",
#     xlab = "RWind Speed (m/s)", ylab = "Frequency", 
#     col = "lightgreen")

#dev.off()
