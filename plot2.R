#####
#plot02
#
#####Get Classes
df.head <- read.csv("exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", nrow =10)
classes <- sapply(df.head, class)
######Read File
hpower<-read.csv("exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", colClasses = classes,na.strings="?")  
hpower07<-hpower[(hpower$Date=="2/2/2007"|hpower$Date=="1/2/2007"),]
t<-paste(hpower07$Date,hpower07$Time)
t<-strptime(t,"%d/%m/%Y %H:%M:%S")
hpower07t<-cbind(hpower07,t)
#####Plot
png("plot2.png", width = 480, height = 480) 
plot(x=hpower07t$t,y=hpower07t$Global_active_power,type="l",main="",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()  
#####
