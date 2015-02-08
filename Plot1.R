##Assignment #1 in Exploratory Data Analysis

## Retrieve, unzip, read data
datasource <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(datasource, destfile = "household_power_consumption.zip", method = "auto", mode= "wb")
unzip("household_power_consumption.zip")
Feb07 <- read.table("household_power_consumption.txt",header = TRUE,nrows=75000,sep=";",stringsAsFactors = FALSE)

## Convert 1st two columns to Date/Time classes.  Convert remaining to numeric. 
for (i in 3:9) {
    Feb07[,i] <- as.numeric(Feb07[,i])
}
Feb07$Time <- paste(Feb07$Date,Feb07$Time,sep=" ")
Feb07$Time <- strptime(Feb07$Time, "%d/%m/%Y %H:%M:%S")
Feb07$Date <- as.Date(Feb07$Date, "%d/%m/%Y")

##Subset data to two dates:  02/01/2007 and 02/02/2007
pow_usage1 <- Feb07$Date == "2007-02-01" 
pow_usage2 <- Feb07$Date == "2007-02-02"
pow_usage <- pow_usage1 | pow_usage2
x <- Feb07[pow_usage,] 

## Create Plot 1.  Write to png file.
png(file="plot1.png", width = 480, height = 480)
par(mfrow = c(1, 1))
x_axis <- "Global Active Power (kilowatts)"
hist(x$Global_active_power,col="red",main="Global Active Power",xlab = x_axis)
dev.off()
