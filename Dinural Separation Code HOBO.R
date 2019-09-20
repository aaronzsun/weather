#Diurral Separation Program Edited

#7/2/19 Dinural Separation Code 2 | Aaron Sun
#Attached dataset (change name throughout program for different sets)
DATA <- lacsd
attach(DATA)

#Changes timestamp to hours 
DATA$Hours <- format(as.POSIXct(DATA$V2, "%m/%d/%Y %I:%M:%S %p", tz = ""), format = "%H:%M")
DATA$Dates <- format(as.POSIXct(DATA$V2, "%m/%d/%Y %I:%M:%S %p", tz = ""), format = "%Y-%m-%d")


#Creates new data subset of hours, windspd, and winddirection (edit windspeed and winddirection to column variables)
NewData <- subset(DATA, select=c(Dates,Hours,V3,V5))

NewData$V3 <- as.numeric(as.character(NewData$V3))
NewData$V5 <- as.numeric(as.character(NewData$V5))

#Sets Hours as a list
b <- c(NewData$Hours)

#Converts Hours:Minutes to decimal form
NewData$Hours <- sapply(strsplit(b,":"), function(x) {
  x <- as.numeric(x)
  x[1]+x[2]/60
}
)

#Creates new dataset for day (edit numbers if needed)
DaytimeData <- NewData[NewData$Hours > 7 & NewData$Hours < 19, ]

#Creates new dataset for night (edit numbers if needed)
NighttimeData <- NewData[NewData$Hours < 7 | NewData$Hours > 19, ]

#Creates CSV files comma seperated
write.csv(DaytimeData, file = "DaytimeDataMeadowBay6_26.csv")
write.csv(NighttimeData, file = "NighttimeDataMeadowBay6_26.csv")


