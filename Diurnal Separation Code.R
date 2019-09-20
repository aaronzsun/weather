#7/2/19 Dinural Separation Code | Aaron Sun
#Attached dataset (change name throughout program for different sets)

#insert dataset name
name <- "BR1"

#insert table name
DATA <- BR1
attach(DATA)

#insert timestamp column
DATA$timestamp <- DATA$V1

#insert desired data columns / column names
DATA$column1 <- V7
DATA$column2 <- V8



#Changes timestamp to hours 
DATA$Hours <- format(as.POSIXct(DATA$timestamp, "%Y-%m-%d %H:%M:%S", tz = ""), format = "%H:%M")
DATA$Dates <- format(as.POSIXct(DATA$timestamp, "%Y-%m-%d %H:%M:%S", tz = ""), format = "%Y-%m-%d ")

#Creates new data subset of hours, windspd, and winddirection (edit windspeed and winddirection to column variables)
NewData <- subset(DATA, select=c(Dates,Hours,column1,column2))

#Sets Hours as a list
b <- c(NewData$Hours)

#Converts Hours:Minutes to decimal form
NewData$Hours <- sapply(strsplit(b,":"), function(x) {
                                      x <- as.numeric(x)
                                      x[1]+x[2]/60
                                  }
)

NewData$column1 <- as.numeric(as.character(NewData$column1))
NewData$column2 <- as.numeric(as.character(NewData$column2))

NewData$TimeStamp <- paste(NewData$Dates, " ", NewData$Hours)



#Creates new dataset for day (edit numbers if needed)
DaytimeData <- NewData[NewData$Hours > 7 & NewData$Hours < 19, ]

#Creates new dataset for night (edit numbers if needed)
NighttimeData <- NewData[NewData$Hours < 7 | NewData$Hours > 19, ]




#Creates CSV files comma seperated
write.csv(DaytimeData, file = "BR1DaytimeData.csv")
write.csv(NighttimeData, file = "BR1NighttimeData.csv")


