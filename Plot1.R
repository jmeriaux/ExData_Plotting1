
#Test if data exists otherwise load it
if (!exists("hpconsumption") ) 
{source("./LoadData.R")}


#Reset device output
dev.off();

# plot histogram
hist(hpcon$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)");

#Generate pdf output using copy function
dev.copy(device=pdf,file="./Rplot1.pdf");

dev.off();
