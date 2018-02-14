#Sys.setlocale("LC_TIME", "English")
mydata = read.table("household_power_consumption.txt", sep=";", header=TRUE, dec=".", stringsAsFactors = FALSE)
data<-mydata[(mydata$Date=="1/2/2007" | mydata$Date=="2/2/2007"), ]
subData<-paste(data$Date,data$Time, sep=" ")
finalData<-strptime(subData, "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480,height = 480)
plot(finalData, as.numeric(data$Global_active_power), type = "l", xlab = "", ylab="Global Active power(kilowatts")
dev.off()