# Read Divvy trip and station data from CSV files, and combine these
# data into two data frames (one data frame for the trip data, and
# another data frame for the station data).
#
# As far as I know, this works only for the 2016 and 2017 Divvy data;
# data from other years may have slightly different formats.
#
# By default, "read_csv" from the readr package is used to load the
# trip data. If the readr package is not installed, "read.csv" is used
# instead.
#
# Steps are taken to prepare the data for more convenient analysis and
# visualization; e.g., extracting useful information from the
# date-and-time character strings, and converting some of the columns
# into factors. The "from" and "to" station names are removed from the
# trip table because they seem to be less consistent across time
# periods; only the "from" and "to" station ids are retained.
#
# Also note that only the trip start times are retained; the trip end
# times are removed.
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

# Convert "day of year" column to factor.
trips$dayofyear <- factor(trips$dayofyear)
