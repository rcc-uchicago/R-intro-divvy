# Load trip data.
library(readr)
trips <- read_csv("Divvy_Trips_2019_Q4.csv.gz")
class(trips) <- "data.frame"

# Import and process trip data using script.
source("read_trip_data.R")

# Create a bar chart using the "barplot" showing number of trips per
# day.
counts <- table(trips$dayofyear)
plot(274:365,counts,pch = 20)

# Create a bar chart using ggplot.
pdat <- data.frame(day = 274:365,counts = as.vector(counts))
p3 <- ggplot(pdat,aes(x = day,y = counts)) +
  geom_point() +
  theme_cowplot()

# Plot a map of the stations in which the area is proportional to the
# number of trips taken from that station.
counts         <- table(trips$from_station_name)
stations$count <- as.vector(counts[stations$name])
p4 <- ggplot(stations,aes(x = longitude,y = latitude,size = sqrt(count))) +
  geom_point(shape = 21,color = "white",fill = "dodgerblue") +
  theme_cowplot()
print(p4)
