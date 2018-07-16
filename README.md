# Introduction to R for data analysis

Materials for the RCC workshop, "Introduction to R for data analysis".

**Date:** Tuesday, July 17, 2018<br>
**Time:** 1:00 pm to 4:00 pm<br>
**Location:** Stevanovich Center, room 112
([OpenStreetMap][openstreetmap])<br>
**Instructor:** Peter Carbonetto

## Introduction

The [R computing environment][R] has become one of the most important
tools in quantitative research, from computational biology to
financial modeling. This short workshop will expose participants to
the basic elements of R through a hands-on analysis of the
[Divvy bike trip data][divvy-data]. No previous programming experience
is required. The aim is to provide participants with the basic tools
to analyze data in R or [RStudio][rstudio], either on the
[RCC cluster][RCC], or on their own computer. Specific skills
participants will learn include importing data from CSV files,
summarizing and processing data in data frames, installing and using R
packages, and plotting data using ggplot2.

This is an *introductory* level workshop, for users with little or no
experience in the topic.

## Prerequisites

All participants are expected to bring a laptop with a Mac, Linux, or
Windows operating system that they have administrative privileges
on. An RCC account is helpful, but not required.

## Other information

+ This workshop attempts to apply elements of the
[Software Carpentry approach][swc]. See also
[this article][swc-lessons-learned]. Please also take a look at the
[Code of Conduct](conduct.md), and the
[license information](LICENSE.md).

+ To generate PDFs of the slides from the R Markdown source, run `make
slides.pdf` in the [docs](docs) directory. For this to work, you will
need to to install the [rmarkdown][rmarkdown] package in R, as well as
the packages used in [slides.Rmd](analysis/slides.Rmd). For more details,
see the [Makefile](docs/Makefile).

+ See also the [instructor notes](NOTES.md).

## Credits

These materials were developed by [Peter Carbonetto][peter] at the
[University of Chicago][uchicago]. Thank you to
[Matthew Stephens][matthew] for his support and guidance.

[openstreetmap]: https://www.openstreetmap.org/way/143812442#map=19/41.79060/-87.59766
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
