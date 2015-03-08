## First load all of the data
data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

## Subset to proper dates
data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")
data <- subset(data_full, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_full)

## Converting dates and times
datetime <- paste(as.Date(data$Date), data$Time)
data$DateTime <- as.POSIXct(datetime)
