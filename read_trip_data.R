# Load the readr package.
library(readr)

# Read the Divvy trip data from the CSV file using the readr package.
trips <- read_csv("Divvy_Trips_2019_Q4.csv.gz")
class(trips) <- "data.frame"

# Convert the gender, usertype, from_station_name and to_station_name
# columns to factors.
trips$gender            <- factor(trips$gender)
trips$usertype          <- factor(trips$usertype)
trips$from_station_name <- factor(trips$from_station_name)
trips$to_station_name   <- factor(trips$to_station_name)

# Create a "day of year" column.
trips$dayofyear <- as.numeric(format(trips$start_time,"%j"))
trips$dayofyear <- factor(trips$dayofyear)
