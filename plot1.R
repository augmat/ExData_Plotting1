#############################################################
# Description: Creates a PNG file that contains an histogram 
# Course : Exploratory Data Analysis - Project 1
#############################################################

library(datasets)

# Reads the dataset
dataHousehold <- read.csv("household_power_consumption.txt", sep=";")

# Subset the dataset based on the dates mentioned
dataHouseholdSub <- subset(dataHousehold, as.Date(dataHousehold$Date,"%d/%m/%Y") >= as.Date("2007-02-01") & as.Date(dataHousehold$Date,"%d/%m/%Y") <= as.Date("2007-02-02"))

# Creates the png format
png(filename="plot1.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white",  res = NA) 

# Creates the histogram
hist(as.numeric(as.character(dataHouseholdSub$Global_active_power)), col="Red", breaks=12, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylim=c(0, 1200))

dev.off()