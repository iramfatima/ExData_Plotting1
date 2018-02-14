mydata = read.table("household_power_consumption.txt", sep=";", header=TRUE, dec=".", stringsAsFactors = FALSE)
data<-mydata[(mydata$Date=="1/2/2007" | mydata$Date=="2/2/2007"), ]
png("plot1.png", width=480,height = 480)
hist(as.numeric(data$Global_active_power), main="Global Active Power", xlab="Global Active Power (killwatts)", ylab="Frequency", col="Red")
dev.off()