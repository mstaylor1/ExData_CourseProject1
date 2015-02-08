##Assignment #1 in Exploratory Data Analysis, continued.

## Run Plot1.R to load data set for Plot 3. 

## Create Plot 3.  Write to png file.
png(file="plot3.png", width = 480, height = 480)
par(mfrow = c(1, 1))
y_axis <- "Energy sub metering"
plot(x$Time,x$Sub_metering_1,type="l",ylab=y_axis,xlab="",col="black",ylim=c(0,38))
par(new=TRUE)
plot(x$Time,x$Sub_metering_2,type="l",ylab=y_axis,xlab="",col="red",ylim=c(0,38))
par(new=TRUE)
plot(x$Time,x$Sub_metering_3,type="l",ylab=y_axis,xlab="",col="blue",ylim=c(0,38))
par(new=FALSE)
plot3_lg <- colnames(x[,7:9])
legend("topright",legend = plot3_lg,lty=1,col = c("black","red","blue"))
dev.off()