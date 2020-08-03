# Read Divvy station data from a CSV file. I've only tested this code
# on the 2016 and 2017 Divvy data; data from other years may have
# slightly different formats.
read.station.data  <- function (filename) {

  # Load the station data.
  cat("Reading station data from ",filename,".\n",sep="")
  dat <- read.csv(filename,header = TRUE,stringsAsFactors = FALSE)
  class(dat) <- "data.frame"

  # Trim the whitespace from the cities column, then convert the
  # "city" column to a factor.
  dat <- transform(dat,city = factor(trimws(city)))

  # Strip any columns that are all empty, and return the data frame.
  cols <- sapply(dat,function (x) !all(is.na(x)))
  dat  <- dat[cols]

  return(dat)
}

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
read.trip.data <- function (trip.files, stations) {

  # Figure out whether to use read.csv or read_csv.
  if (requireNamespace("readr",quietly = TRUE))
    use.readr <- TRUE
  else
    use.readr <- FALSE
  
  # Combine the trip data into a single table. Some of the column
  # names do not match up exactly, so we need to fix them.
  n     <- length(trip.files)
  trips <- NULL
  for (i in 1:n) {
    cat("Reading trip data from ",trip.files[i],".\n",sep="")
    if (use.readr) {
      suppressMessages(x <- readr::read_csv(trip.files[i],progress = FALSE))
      class(x) <- "data.frame"
    } else
      x <- read.csv(trip.files[i],header = TRUE,stringsAsFactors = FALSE)
    names(x) <- c("trip_id","start_time","end_time","bikeid","tripduration",
                  "from_station_id","from_station_name","to_station_id",
                  "to_station_name","usertype","gender","birthyear")
    trips <- rbind(trips,x)
  }

  # Remove the stop times, and the "from" and "to" station ids from the
  # trip data.
  trips <- trips[-c(3,6,8)]
  
  # Set some of the table columns to factors.
  cat("Preparing combined trip data.\n")
  trips$gender[trips$gender == ""] <- NA
  trips <-
    transform(trips,
              usertype          = factor(usertype),
              gender            = factor(gender),
              bikeid            = factor(bikeid),
              from_station_name = factor(from_station_name,stations$name),
              to_station_name   = factor(to_station_name,stations$name))

  # Convert the start times from character strings to dates (here I'm
  # following the suggestions made by Larry Layne and Austin Wehrwein).
  cat("Extracting years from start times.\n")
  trips <- transform(trips,
             start_time = strptime(start_time,format = "%m/%d/%Y %H:%M"))
  trips <- transform(trips,
             start.year = factor(as.numeric(format(start_time,"%Y"))))
  
  # Return a list object containing the station data and the trip
  # data.
  return(trips)
}
