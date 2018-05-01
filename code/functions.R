# This file defines some functions that are used in the analysis of
# the Divvy data.

# Read Divvy trip and station data from CSV files, and combine these
# data into two data frames (one data frame for the trip data, and
# another data frame for the station data). As far as I know, this
# works only for the 2016 and 2017 Divvy data; data from other years
# may have slightly different formats.
#
# Steps are taken to prepare the data for more convenient analysis and
# visualization; e.g., extracting useful information from the
# date-and-time character strings, and converting some of the columns
# into factors. The "from" and "to" station names are removed from the
# trip data table because they seem to be less consistent across time
# periods.
#
# Note that only the trip start times are retained; the trip end times
# are removed.
read.divvy.data <- function (station.file, trip.files) {

  # Load the station data.
  cat("Reading station data from ",station.file,".\n",sep="")
  stations <- fread(station.file,sep = ",",header = TRUE,
                    stringsAsFactors = FALSE,verbose = FALSE,
                    showProgress = FALSE)
  class(stations) <- "data.frame"

  # Convert the "city" column to a factor.
  cat("Processing station data.\n")
  stations <- transform(stations,city = factor(city))

  # Strip any columns that are all empty.
  cols     <- sapply(stations,function (x) !all(is.na(x)))
  stations <- stations[cols]
  
  # Combine trip data into a single table. Some of the column names do
  # not match up exactly, so we need to
  n     <- length(trip.files)
  trips <- NULL
  for (i in 1:n) {
    cat("Reading trip data from ",trip.files[i],".\n",sep="")
    x        <- fread(trip.files[i],sep = ",",header = TRUE,
                      stringsAsFactors = FALSE,verbose = FALSE,
                      showProgress = FALSE)
    class(x) <- "data.frame"
    names(x) <- c("trip_id","start_time","end_time","bikeid","tripduration",
                  "from_station_id","from_station_name","to_station_id",
                  "to_station_name","usertype","gender","birthyear")
    trips <- rbind(trips,x)
  }

  # Remove the stop times, and "from" and "to" station names from the
  # trip data.
  trips <- trips[-c(3,7,9)]
  
  # Set some of the table columns to factors.
  cat("Preparing combined trip data.\n")
  trips$gender[trips$gender == ""] <- NA
  trips <-
    transform(trips,
              usertype          = factor(usertype),
              gender            = factor(gender),
              bikeid            = factor(bikeid),
              from_station_id   = factor(from_station_id,stations$id),
              to_station_id     = factor(to_station_id,stations$id))

  # Convert the start times from character strings to dates (here I'm
  # following the suggestions made by Larry Layne and Austin Wehrwein).
  cat("Converting dates and times.\n")
  trips <-
    transform(trips,
              start_time = strptime(start_time,format = "%m/%d/%Y %H:%M"))
  trips <-
    transform(trips,
              start.year = factor(as.numeric(format(start_time,"%Y"))),
              start.week = as.numeric(format(start_time,"%W")),
              start.day  = factor(weekdays(as.Date(start_time)),
                                  c("Monday","Tuesday","Wednesday","Thursday",
                                    "Friday","Saturday","Sunday")),
              start.hour = as.numeric(strftime(start_time,format = "%H")))
  
  # Return a list object containing the station data and the trip
  # data.
  return(list(stations = stations,trips = trips))
}
