#7/2/19 Dinural Separation Code | Aaron Sun
#Attached dataset (change name throughout program for different sets)
DATA <- CR1000XSeries_Table1
attach(DATA)

#Changes timestamp to hours 
DATA$Hours <- format(as.POSIXct(DATA$V1, "%Y-%m-%d %H:%M:%S", tz = ""), format = "%H:%M")
DATA$Dates <- format(as.POSIXct(DATA$V1, "%Y-%m-%d %H:%M:%S", tz = ""), format = "%Y-%m-%d")


#Creates new data subset of hours, windspd, and winddirection (edit windspeed and winddirection to column variables)
NewData <- subset(DATA, select=c(Dates,Hours,V5,V6))

#Sets Hours as a list
b <- c(NewData$Hours)

#Converts Hours:Minutes to decimal form
NewData$Hours <- sapply(strsplit(b,":"), function(x) {
  x <- as.numeric(x)
  x[1]+x[2]/60
}
)

NewData$V5 <- as.numeric(as.character(NewData$V5))
NewData$V6 <- as.numeric(as.character(NewData$V6))


#Creates new dataset for day (edit numbers if needed)
DaytimeData <- NewData[NewData$Hours > 7 & NewData$Hours < 19, ]

#Creates new dataset for night (edit numbers if needed)
NighttimeData <- NewData[NewData$Hours < 7 | NewData$Hours > 19, ]


DaytimeData$Dates <- paste(DaytimeData$Dates, " ", DaytimeData$Hours)
rownames(DaytimeData) <- seq(length=nrow(DaytimeData))

NighttimeData$Dates <- paste(NighttimeData$Dates, " ", NighttimeData$Hours)
rownames(NighttimeData) <- seq(length=nrow(NighttimeData))



#Creates CSV files comma seperated
#write.csv(DaytimeData, file = "DaytimeDataBR1.csv")
#write.csv(NighttimeData, file = "NighttimeDataBR1.csv")


