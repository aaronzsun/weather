# Aaron Sun | 7/10/19
# Program used to create line graphs and histograms of
# solar irradiance during various seasons

#attach data 
library(zoo)
DATA <- CR1000XSeries_Table1
attach(DATA)

#convert to numeric
DATA$V8 <- as.character(as.factor(DATA$V8))
DATA$V8 <- as.numeric(as.character(DATA$V8))

#conversions if necessary
#DATA$V12 <- DATA$V12 * 1000

#DATAWinter <- DATA[5: 37276, ] 
DATASpring <- DATA[5: 125413, ]
DATASummer <- DATA[125414: 206876, ]
#DATAFall <- DATA[]

#Winter Graphs
#png("BR1winter_pyra_linegraph.png")
#
#plot(zoo(DATAWinter$V10,as.Date(DATAWinter$V1,"%Y-%m-%d %H:%M:%S")),
#     xlab="Time", ylab="Total Solar Irradiance (kj/m^2/min)", ylim = c(0,100), 
#     main="BR1 Solar Irradiance Winter (Nov, Dec, Jan)")
#
#dev.off()
#
#png("BR1winter_pyra_frequencies.png")
#
#hist(DATAWinter$V10, xlim = c(0,80), ylim = c(0,80000), 
#     main = "BR1 Solar Irradiance Freq. Winter (Nov, Dec, Jan)",
#     xlab = "Total Solar Irradiance (kj/m^2/min)", ylab = "Frequency", 
#     col = "lightgreen")
#
#dev.off()

#Spring Graphs

png("BR3spring_pyra_linegraph.png")

plot(zoo(DATASpring$V8,as.Date(DATASpring$V1,"%Y-%m-%d %H:%M:%S")),
     xlab="Time", ylab="Total Solar Irradiance (kj/m^2/min)", ylim = c(0,100), 
     main="BR3 Solar Irradiance Spring (Feb, Mar, Apr)")

dev.off()

png("BR3spring_pyra_frequencies.png")

hist(DATASpring$V8, xlim = c(0,80), ylim = c(0,80000), 
     main = "BR3 Solar Irradiance Freq. Spring (Feb, Mar, Apr)",
     xlab = "Total Solar Irradiance (kj/m^2/min)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Summer Graph

png("BR3summer_pyra_linegraph.png")

plot(zoo(DATASummer$V8,as.Date(DATASummer$V1,"%Y-%m-%d %H:%M:%S")),
     xlab="Time", ylab="Total Solar Irradiance (kj/m^2/min)", ylim = c(0,100), 
     main="BR3 Solar Irradiance Summer (May, Jun, Jul)")

dev.off()

png("BR3summer_pyra_frequencies.png")

hist(DATASummer$V8, xlim = c(0,80), ylim = c(0,80000), 
     main = "BR3 Solar Irradiance Freq. Summer (May, Jun, Jul)",
     xlab = "Total Solar Irradiance (kj/m^2/min)", ylab = "Frequency", 
     col = "lightgreen")

dev.off()

#Fall Graph

#png("BR1fall_pyra_linegraph.png")

#plot(zoo(DATAFall$V10,as.Date(DATAFall$V1,"%Y-%m-%d %H:%M:%S")),
#     xlab="Time", ylab="Total Solar Irradiance (kj/m^2/min)", ylim = c(0,100), 
#     main="Solar Irradiance Fall (Aug, Sep, Oct)")

#dev.off()

#png("BR1fall_pyra_frequencies.png")

#hist(DATAFall$V10, xlim = c(0,80), ylim = c(0,80000), 
#     main = "BR1 Solar Irradiance Freq. Fall (Aug, Sep, Oct)",
#     xlab = "Total Solar Irradiance (kj/m^2/min)", ylab = "Frequency", 
#     col = "lightgreen")

#dev.off()
