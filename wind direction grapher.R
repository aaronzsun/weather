#Aaron Sun | Wind Direction Grapher
library(zoo) 

DATA <- DaytimeData
attach(DATA)

#choose column with data
DATA$spd <- DATA$V5

#convert to numeric
DATA$spd <- as.character(as.factor(DATA$spd))
DATA$spd <- as.numeric(as.character(DATA$spd))

#DATAWinter <- DATA[5: 18796, ] 
DATASpring <- DATA[3: 26836, ]
DATASummer <- DATA[26836: 45057, ]
#DATAFall <- DATA[]

#Winter Graphs
#png("Meadow Baywinter_daydirection_linegraph.png")
#
#plot(zoo(DATAWinter$spd,as.Date(DATAWinter$Dates,"%Y-%m-%d %H")),
#     xlab="Time", ylab="Wind Direction (degrees)", ylim = c(0,360), 
#     main="Meadow Bay Daytime Wind Direction Winter (Dec, Jan, Feb)")
#
#dev.off()
#
#png("Meadow Baywinter_daydirection_frequencies.png")
#
#hist(DATAWinter$spd, xlim = c(0,360), ylim = c(0,20000), 
#     main = "Meadow Bay Daytime Wind Direction Freq. Winter (Dec, Jan, Feb)",
#     xlab = "Wind Direction (degrees)", ylab = "Frequency", 
#     col = "lightgreen")
#
#dev.off()

#Spring Graphs

png("Meadow Bayspring_daydirection_linegraph.png")

plot(zoo(DATASpring$spd,as.Date(DATASpring$Dates,"%Y-%m-%d %H")),
     xlab="Time", ylab="Wind Direction (degrees)", ylim = c(0,360), 
     main="Meadow Bay Daytime Wind Speed Direction (Mar, Apr, May)")

dev.off()

png("Meadow Bayspring_daydirection_frequencies.png")

hist(DATASpring$spd, xlim = c(0,360), ylim = c(0,20000), 
     main = "Meadow Bay Daytime Wind Direction Freq. Spring (Mar, Apr, May)",
     xlab = "Wind Direction (degrees)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Summer Graph

png("Meadow Baysummer_daydirection_linegraph.png")

plot(zoo(DATASummer$spd,as.Date(DATASummer$Dates,"%Y-%m-%d %H")),
     xlab="Time", ylab="Wind Direction (degrees)", ylim = c(0,360), 
     main="Meadow Bay Daytime Wind Direction Summer (Jun, Jul, Aug)")

dev.off()

png("Meadow Baysummer_daydirection_frequencies.png")

hist(DATASummer$spd, xlim = c(0,360), ylim = c(0,20000), 
     main = "Meadow Bay Daytime Wind Direction Freq. Summer (Jun, Jul, Aug)",
     xlab = "Wind Direction (degrees)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Fall Graph

#png("Meadow Bayfall_daydirection_linegraph.png")

#plot(zoo(DATAFall$spd,as.Date(DATAFall$Dates,"%Y-%m-%d %H")),
#     xlab="Time", ylab="Wind Direction (degrees)", ylim = c(0,360), 
#     main="Meadow Bay Daytime Wind Direction Fall (Sep, Oct, Nov)")

#dev.off()

#png("Meadow Bayfall_daydirection_frequencies.png")

#hist(DATAFall$Spd, xlim = c(0, 360), ylim = c(0,20000), 
#     main = "Meadow Bay Daytime Wind Direction Freq. Fall (Sep, Oct, Nov)",
#     xlab = "Wind Direction (m/s)", ylab = "Frequency", 
#     col = "lightgreen")

#dev.off()
