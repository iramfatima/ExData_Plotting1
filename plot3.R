Sys.setlocale("LC_TIME", "English")
mydata = read.table("household_power_consumption.txt", sep=";", header=TRUE, dec=".", stringsAsFactors = FALSE)
data<-mydata[(mydata$Date=="1/2/2007" | mydata$Date=="2/2/2007"), ]
subData<-paste(data$Date,data$Time, sep=" ")
finalData<-strptime(subData, "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480,height = 480)
plot(finalData, as.numeric(data$Sub_metering_1), type = "l", xlab = "", ylab="Energy Submetering")
lines(finalData, as.numeric(data$Sub_metering_2), type = "l", col="red")
lines(finalData, as.numeric(data$Sub_metering_3), type = "l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = 1)
dev.off()
