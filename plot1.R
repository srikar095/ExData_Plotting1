

# Importing the full dataset 
df <- read.csv("E:/ExData_Plotting1/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
df$Date <- as.Date(df$Date, format="%d/%m/%Y")
# Subset the data
data <- subset(df, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(df)
# Date conversion
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)
# Plot 1
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
# Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

