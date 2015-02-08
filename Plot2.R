##Assignment #1 in Exploratory Data Analysis, continued.

## Run Plot1.R to load data set for Plot 2. 

## Create Plot 2.  Write to png file.
png(file="plot2.png", width = 480, height = 480)
par(mfrow = c(1, 1))
y_axis <- "Global Active Power (kilowatts)"
plot(x$Time,x$Global_active_power,type="l",ylab=y_axis,xlab="")
dev.off()