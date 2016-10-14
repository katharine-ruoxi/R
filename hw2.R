# read the file
SF <- read.csv("downloads/SF.txt")
# store the data
SFS1 <- SF$state_1hr_ex[1:20]
SFS8 <- SF$state_8hr_ex[1:20]
SFN8 <- SF$natl_8hr_ex[1:20]
year <- range(0,SF$year)+1995

# Plot the data
plot(SFS1, type = "o", col="red", ylim = c(0,100))
lines(SFS8, type = "o", col="yellow")
lines(SFN8, type = "o", col="green")

# Edit the plot
title(main = "San Francisco Air Quality")
axis(1, at=1:20,labels=1996:2015 )
title(xlab = "Year",ylab = "Numbers of Days over Standard")