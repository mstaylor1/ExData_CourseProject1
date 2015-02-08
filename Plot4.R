##Assignment #1 in Exploratory Data Analysis, continued.

## Run Plot1.R to load data set for Plot 4. 

## Create Plot 4.  Write to png file.
## "Plot 4" consists of 4 separate plots in a 2x2 array.

## Create Plot 4a
png(file="plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
y_axis <- "Global Active Power (kilowatts)"
plot(x$Time,x$Global_active_power,type="l",ylab=y_axis,xlab="")

## Create Plot 4b
y_axis <- "Voltage"
plot(x$Time,x$Voltage,type="l",ylab=y_axis,xlab="datetime")

## Create Plot 4c
y_axis <- "Energy sub metering"
p_color = c("black","red","blue")
plot(x$Time,x$Sub_metering_1,type="l",ylab=y_axis,xlab="",col="black",ylim=c(0,38))
par(new=TRUE)
plot(x$Time,x$Sub_metering_2,type="l",ylab="",xlab="",col="red",ylim=c(0,38))
par(new=TRUE)
plot(x$Time,x$Sub_metering_3,type="l",ylab="",xlab="",col="blue",ylim=c(0,38))
par(new=FALSE)
legend("topright",legend = plot3_lg,lty=1,col = c("black","red","blue"),bty="n")

## Create Plot 4d
y_axis <- "Global_reactive_power"
par(lab=c(5,5,7))
plot(x$Time,x$Global_reactive_power,type="l",ylab=y_axis,xlab="datetime",col="black",cex.axis=0.85)

dev.off()