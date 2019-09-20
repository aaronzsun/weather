#Aaron Sun | Wind Direction Grapher
library(zoo) 

DATA <- NighttimeData
attach(DATA)

#choose column with data
DATA$spd <- DATA$V5

#convert to numeric
DATA$spd <- as.character(as.factor(DATA$spd))
DATA$spd <- as.numeric(as.character(DATA$spd))


#DATAWinter <- DATA[5: 18729, ] 
DATASpring <- DATA[3: 26904, ]
DATASummer <- DATA[26905: 45299, ]
#DATAFall <- DATA[]


#Winter Graphs
#png("Meadow Baywinter_nightdirection_linegraph.png")
#
#plot(zoo(DATAWinter$spd,as.Date(DATAWinter$Dates,"%Y-%m-%d %H")),
#     xlab="Time", ylab="Wind Direction (degrees)", ylim = c(0,360), 
#     main="Meadow Bay Nighttime Wind Direction Winter (Dec, Jan, Feb)")

#dev.off()

#png("Meadow Baywinter_nightdirection_frequencies.png")

#hist(DATAWinter$spd, xlim = c(0,360), ylim = c(0,20000), 
#     main = "Meadow Bay Nighttime Wind Direction Freq. Winter (Dec, Jan, Feb)",
#     xlab = "Wind Direction (degrees)", ylab = "Frequency", 
#     col = "lightgreen")

#dev.off()

#Spring Graphs

png("Meadow Bayspring_nightdirection_linegraph.png")

plot(zoo(DATASpring$spd,as.Date(DATASpring$Dates,"%Y-%m-%d %H")),
     xlab="Time", ylab="Wind Direction (degrees)", ylim = c(0,360), 
     main="Meadow Bay Nighttime Wind Speed Direction (Mar, Apr, May)")

dev.off()

png("Meadow Bayspring_nightdirection_frequencies.png")

hist(DATASpring$spd, xlim = c(0,360), ylim = c(0,20000), 
     main = "Meadow Bay Nighttime Wind Direction Freq. Spring (Mar, Apr, May)",
     xlab = "Wind Direction (degrees)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Summer Graph

png("Meadow Baysummer_nightdirection_linegraph.png")

plot(zoo(DATASummer$spd,as.Date(DATASummer$Dates,"%Y-%m-%d %H")),
     xlab="Time", ylab="Wind Direction (degrees)", ylim = c(0,360), 
     main="Meadow Bay Nighttime Wind Direction Summer (Jun, Jul, Aug)")

dev.off()

png("Meadow Baysummer_nightdirection_frequencies.png")

hist(DATASummer$spd, xlim = c(0,360), ylim = c(0,20000), 
     main = "Meadow Bay Nighttime Wind Direction Freq. Summer (Jun, Jul, Aug)",
     xlab = "Wind Direction (degrees)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Fall Graph

#png("Meadow Bayfall_nightdirection_linegraph.png")

#plot(zoo(DATAFall$spd,as.Date(DATAFall$Dates,"%Y-%m-%d %H")),
#     xlab="Time", ylab="Wind Direction (degrees)", ylim = c(0,360), 
#     main="Meadow Bay Nighttime Wind Direction Fall (Sep, Oct, Nov)")

#dev.off()

#png("Meadow Bayfall_nightdirection_frequencies.png")

#hist(DATAFall$Spd, xlim = c(0, 360), ylim = c(0,20000), 
#     main = "Meadow Bay Nighttime Wind Direction Freq. Fall (Sep, Oct, Nov)",
#     xlab = "Wind Direction (m/s)", ylab = "Frequency", 
#     col = "lightgreen")

#dev.off()

