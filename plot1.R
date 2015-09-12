#####
#plot01
#
#####Get Classes
df.head <- read.csv("exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", nrow =10)
classes <- sapply(df.head, class)
######Read File
hpower<-read.csv("exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", colClasses = classes,na.strings="?")  
hpower07<-hpower[(hpower$Date=="2/2/2007"|hpower$Date=="1/2/2007"),]
#####Plot
png("plot1.png", width = 480, height = 480) 
hist(hpower07$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()  
#####
