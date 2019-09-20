# Aaron Sun | 7/10/19
# Program used to create line graphs and histograms of
# relative humidity during various seasons

#attach inputed data
library(zoo)
DATA <- CR1000XSeries_Table1
attach(DATA)

#choose column with data
DATA$hum <- DATA$V8

#convert to numeric
DATA$hum <- as.character(as.factor(DATA$hum))
DATA$hum <- as.numeric(as.character(DATA$hum))

#conversions if necessary
#DATA$V12 <- DATA$V12 * 1000

DATAWinter <- DATA[5: 25231, ] 
DATASpring <- DATA[25232: 149856, ]
DATASummer <- DATA[149857: 169320, ]
#DATAFall <- DATA[]

#Winter Graphs
png("BR2winter_hum_linegraph.png")

plot(zoo(DATAWinter$hum,as.Date(DATAWinter$V1,"%Y-%m-%d %H:%M:%S")),
     xlab="Time", ylab="Relative Humidity (%)", ylim = c(0,100), 
     main="BR2 Relative Humidity Winter (Dec, Jan, Feb)")

dev.off()

png("BR2winter_hum_frequencies.png")

hist(DATAWinter$hum, xlim = c(0,100), ylim = c(0,60000), 
     main = "BR2 Relative Humidity Freq. Winter (Dec, Jan, Feb)",
     xlab = "Relative Humidity (%)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Spring Graphs

png("BR2spring_hum_linegraph.png")

plot(zoo(DATASpring$hum,as.Date(DATASpring$V1,"%Y-%m-%d %H:%M:%S")),
     xlab="Time", ylab="Relative Humidity (%)", ylim = c(0,100), 
     main="BR2 Relative Humidity Spring (Mar, Apr, May)")

dev.off()

png("BR2spring_hum_frequencies.png")

hist(DATASpring$hum, xlim = c(0,100), ylim = c(0,60000), 
     main = "BR2 Relative Humidity Freq. Spring (Mar, Apr, May)",
     xlab = "Relative Humidity (%)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Summer Graph

png("BR2summer_hum_linegraph.png")

plot(zoo(DATASummer$hum,as.Date(DATASummer$V1,"%Y-%m-%d %H:%M:%S")),
     xlab="Time", ylab="Relative Humidity (%)", ylim = c(0,100), 
     main="BR2 Relative Humidity Summer (Jun, Jul, Aug)")

dev.off()

png("BR2summer_hum_frequencies.png")

hist(DATASummer$hum, xlim = c(0,100), ylim = c(0,60000), 
     main = "BR2 Relative Humidity Freq. Summer (Jun, Jul, Aug)",
     xlab = "Relative Humidity (%)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Fall Graph

#png("BR1fall_hum_linegraph.png")

#plot(zoo(DATAFall$hum,as.Date(DATAFall$V1,"%Y-%m-%d %H:%M:%S")),
#     xlab="Time", ylab="Relative Humidity (%)", ylim = c(0,100), 
#     main="BR1 Relative Humidity Fall (Sep, Oct, Nov)")

#dev.off()

#png("BR1fall_hum_frequencies.png")

#hist(DATAFall$Vhum, xlim = c(0, 100), ylim = c(0,40000), 
#     main = "BR1 Relative Humidity Freq. Fall (Sep, Oct, Nov)",
#     xlab = "Relative Humidity (%)", ylab = "Frequency", 
#     col = "lightgreen")

#dev.off()
