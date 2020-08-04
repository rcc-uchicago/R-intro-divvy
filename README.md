# Introduction to R for data analysis

The [R computing environment][R] has become one of the most important
tools in quantitative research, from computational biology to
financial modeling. This short workshop will expose participants to
the basic elements of R through a hands-on analysis of the
[Divvy bike trip data][divvy-data]. No previous programming experience
is required. The aim is to provide participants with the basic tools
to analyze data in R or [RStudio][rstudio], either on the
[RCC cluster][RCC], or on their own computer. Specific skills
participants will learn include:

1. Importing data from CSV files;

2. Summarizing and processing data in data frames;

3. Installing and using R packages; and

4. Plotting data using ggplot2.

This is an *introductory* level workshop, for users with little or no
experience in the topic.

## Prerequisites

All participants are expected to have a laptop or desktop computer
with a Mac, Linux, or Windows operating system that they have
administrative privileges on. An RCC account is not required.

## What's included

Here is an overview of some of the files included in this git
repository (the "workshop packet"):

+ [README.md](README.md): This file.

+ [conduct.md](conduct.md): Code of Conduct.

+ [LICENSE.md](license.md): License information for the materials in
  this repository.

+ [slides.pdf](slides.pdf): The slides for the workshop.

+ [slides.Rmd](slides.Rmd): R Markdown source used to generate these
  slides.

+ [read_trip_data.R](read_trip_data.R): Some R code used in the hands-on
  examples.

+ [Makefile](Makefile): GNU Makefile containing commands to
  generate the slides from the R Markdown source.

## Other information

+ This workshop attempts to apply elements of the [Software Carpentry
approach][swc]. See also [this article][swc-lessons-learned]. Please
also take a look at the [Code of Conduct](conduct.md), and the
[license information](LICENSE.md).

+ To generate PDFs of the slides from the R Markdown source, run `make
slides` in the root directory of the git repository. For this to work,
you will need to to install the [rmarkdown][rmarkdown] package in R,
as well as the packages used in [slides.Rmd](slides.Rmd). For more
details, see the [Makefile](Makefile).

+ See also the [instructor notes](docs/NOTES.md).

## Credits

These materials were developed by [Peter Carbonetto][peter] at the
[University of Chicago][uchicago]. Thank you to
[Matthew Stephens][matthew] for his support and guidance.

[R]: http://cran.r-project.org
[rstudio]: http://rstudio.com
[RCC]: http://rcc.uchicago.edu
[swc]: http://software-carpentry.org/lessons
[swc-lessons-learned]: http://dx.doi.org/10.12688/f1000research.3-62.v2
[rmarkdown]: https://cran.r-project.org/package=rmarkdown
[divvy-data]: https://www.divvybikes.com/system-data
[peter]: http://pcarbo.github.io
[matthew]: http://stephenslab.uchicago.edu
[uchicago]: https://www.uchicago.edu
