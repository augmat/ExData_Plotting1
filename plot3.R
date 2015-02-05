#############################################################
# Description: Creates a PNG file that contains a plot. 
# Course : Exploratory Data Analysis - Project 1
#############################################################

library(datasets)

# Reads the dataset
dataHousehold <- read.csv("household_power_consumption.txt", sep=";")


# Subset the dataset based on the dates mentioned
dataHouseholdSub <- subset(dataHousehold, as.Date(dataHousehold$Date,"%d/%m/%Y") >= as.Date("2007-02-01") & as.Date(dataHousehold$Date,"%d/%m/%Y") <= as.Date("2007-02-02") )

# Creates the png format
png(filename="plot3.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white",  res = NA) 

plot(as.numeric(as.character(dataHouseholdSub$Sub_metering_1)), type="l", ann=FALSE, xaxt="n")
lines(as.numeric(as.character(dataHouseholdSub$Sub_metering_2)), col="red")
lines(as.numeric(as.character(dataHouseholdSub$Sub_metering_3)), col="blue")
axis(1, at=c(1,1500,2900), labels=c("Thu","Fri","Sat"))
title(ylab="Energy sub metering")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c('black','red','blue'), lty=1, lwd=1.5)


dev.off()