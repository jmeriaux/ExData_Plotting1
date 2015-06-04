#Load data in hpconsumption data table

fl <- "../data/household_power_consumption.txt";

hpconsumption <- read.table(fl, sep=";",nrows=2100000,header=TRUE);

hpcon <- subset(hpconsumption,Date == "1/2/2007" | Date == "2/2/2007")

hpcon$Date <-as.Date(hpcon$Date,"%d/%m/%Y");


hpcon$Tstamp <- strptime(paste(hpcon$Date,hpcon$Time), "%Y-%m-%d %H:%M:%S");

hpcon$Global_active_power <- as.numeric(as.character(hpcon$Global_active_power));
hpcon$Global_reactive_power <- as.numeric(as.character(hpcon$Global_reactive_power));
hpcon$Voltage <- as.numeric(as.character(hpcon$Voltage));
hpcon$Global_intensity <- as.numeric(as.character(hpcon$Global_intensity));
hpcon$Sub_metering_1 <- as.numeric(as.character(hpcon$Sub_metering_1));
hpcon$Sub_metering_2 <- as.numeric(as.character(hpcon$Sub_metering_2));
hpcon$Sub_metering_3 <- as.numeric(as.character(hpcon$Sub_metering_3));

