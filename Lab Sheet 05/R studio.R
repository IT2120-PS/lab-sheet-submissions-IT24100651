setwd("C:\\Users\\IT24100651\\Desktop\\IT24100651")
# Import the dataset into R
DeliveryTimes <- read.table("Exercise - Lab 05.txt", header=TRUE)
# Assuming the dataset column for Delivery Time is named "Delivery_Time"a
hist(DeliveryTimes$Delivery_Time, 
     breaks=seq(20, 70, by=5), 
     main="Histogram of Delivery Times", 
     xlab="Delivery Time (minutes)", 
     col="skyblue", 
     right=TRUE)

DeliveryTimes$Frequency <- table(cut(DeliveryTimes$Delivery_Time, breaks=seq(20, 70, by=5)))
DeliveryTimes$CumulativeFrequency <- cumsum(DeliveryTimes$Frequency)


plot(DeliveryTimes$CumulativeFrequency, 
     type="s", 
     xlab="Delivery Time (minutes)", 
     ylab="Cumulative Frequency", 
     main="Cumulative Frequency Polygon (Ogive)", 
     col="red", 
     xaxt="n")

# Add x-axis labels
axis(1, at=seq(20, 70, by=5), labels=seq(20, 70, by=5))
