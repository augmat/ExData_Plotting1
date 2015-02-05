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
png(filename="plot2.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white",  res = NA) 

# Creates the plot
plot(as.numeric(as.character(dataHouseholdSub$Global_active_power)), type="l", ann=FALSE, xaxt="n")
# Adds a title and labels
title(ylab="Global Active Power (kilowatts)")
axis(1, at=c(1,1500,2900), labels=c("Thu","Fri","Sat"))
box()

dev.off()