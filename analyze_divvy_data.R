# TO DO: Summarize contents of script here.

# Load station data.
stations <- read.csv("Divvy_Stations_2017_Q3Q4.csv",
                     stringsAsFactors = FALSE)

# Inspect the table.
nrow(stations)
ncol(stations)
head(stations)
tail(stations)
summary(stations)
str(stations)

# Inspect the data in more detail.
sapply(stations,class)
object.size(stations)

# Select only the "dpcapacity" column, and assign it to a new variable:
x <- stations$dpcapacity

# Run these commands to take a closer look at the "dpcapacity" column:
class(x)
length(x)
summary(x)
min(x)
max(x)
mean(x)
median(x)
quantile(x,0.5)
table(x)

# It is interesting that a couple of the Divvy bike stations have no
# docks. What are these stations?
subset(stations,dpcapacity == 0)
stations[stations$dpcapacity == 0,]

# Order stations by number of docks.
rows <- order(stations$dpcapacity)
stations2 <- stations[rows,]
head(stations2)
tail(stations2)

# Previously, we inspected numeric data. Next’s, let’s look at an
# example of non-numeric data.
x <- stations$city
class(x)
summary(x)

# Convert "city" to a factor.
x <- factor(stations$city)
class(x)
summary(x)

# Fixing the "city" column.
stations2 <- stations
rows <- which(stations2$city == "Chicago ")
stations2[rows,"city"] <- "Chicago"
summary(stations$city)
stations2$city <- factor(stations2$city)
summary(stations2$city)
summary(stations2)
stations <- stations2

# Create a map of the Divvy stations.
plot(stations$longitude,stations$latitude,pch = 20)

# Color stations by city.
plot(stations$longitude,stations$latitude,col = stations$city,pch = 20)

# Create the map using ggplot2.
library(ggplot2)
p1 <- ggplot(stations,aes(x = longitude,y = latitude,color = city)) +
  geom_point()
print(p1)

# Create a better map.
p2 <- ggplot(stations,aes(x = longitude,y = latitude,fill = city)) +
  geom_point(shape = 21,size = 2,color = "white")
p2 <- p2 + scale_fill_manual(values = c("dodgerblue","darkorange","darkblue"))
library(cowplot)
p2 <- p2 + theme_cowplot()
print(p2)

# Load trip data.
library(readr)
trips <- read_csv("Divvy_Trips_2019_Q4.csv.gz")
class(trips) <- "data.frame"

# Import and process trip data using script.
source("read_trip_data.R")

# Inspect trip data.
# TO DO.
