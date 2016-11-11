## Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the
## corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your
## code file should include code for reading the data so that the plot can be
## fully reproduced. You must also include the code that creates the PNG file. 
## Add the PNG file and R code file to the top-level folder of your git
## repository (no need for separate sub-folders) When you are finished with the
## assignment, push your git repository to GitHub so that the GitHub version of
## your repository is up to date. There should be four PNG files and four R code
## files, a total of eight files in the top-level folder of the repo.

##
pltData <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
## set time variable
finalData <- pltData[pltData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)
##
## Generating Plot 1
hist(finalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
