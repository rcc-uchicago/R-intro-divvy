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

# Previously, we inspected numeric data. Next’s, let’s look at an
# example of non-numeric data.
x <- stations$city
class(x)
summary(x)

# Convert "city" to a "factor".
x <- factor(stations$city)
class(x)
summary(x)

# Load trip data.
# TO DO.
