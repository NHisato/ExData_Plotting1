#####
#plot03
#
#####Get Classes
df.head <- read.csv("exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", nrow =10)
classes <- sapply(df.head, class)
#####Read File
hpower<-read.csv("exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", colClasses = classes,na.strings="?")  
hpower07<-hpower[(hpower$Date=="2/2/2007"|hpower$Date=="1/2/2007"),]
t<-paste(hpower07$Date,hpower07$Time)
t<-strptime(t,"%d/%m/%Y %H:%M:%S")
hpower07t<-cbind(hpower07,t)
#####Plot
png("plot3.png", width = 480, height = 480) 
with(hpower07t,plot(x=t,y=Sub_metering_1,type="l",main="",xlab="",ylab="Energy sub metering"))
with(hpower07t,lines(t,Sub_metering_2,col=2))
with(hpower07t,lines(t,Sub_metering_3,col=4))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1,col=c(1,2,4))
dev.off()  
#####
