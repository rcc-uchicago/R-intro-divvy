# Introduction to R for data analysis

Materials for the RCC workshop, "Introduction to R for data analysis".

**Date:** Tuesday, May 1, 2018<br>
**Time:** 2:00 pm to 4:30 pm<br>
**Location:** Zar Room, John Crerar Library
([OpenStreetMap](https://www.openstreetmap.org/search?query=john%20crerar%20library#map=18/41.79053/-87.60282))<br>
**Instructor:** Peter Carbonetto

Materials for RCC workshop, "Introduction to R for data analysis",
May. 1, 2–4:30p.

## Introduction

The [R computing environment][R] has become one of the most important
tools in quantitative research, from computational biology to
financial modeling. This short workshop will expose participants to
the basic elements of R through an analysis of
[Divvy bike trip data][divvy-data]. No previous programming experience
is required. The aim is to provide participants with the basic tools
to explore the features of R or [RStudio][rstudio] on their own,
either on the [RCC cluster][RCC], or on their own computer. This is an
*introductory* level workshop, for users with little or no experience
in the topic.

## Prerequisites

All participants are expected to bring a laptop with a Mac, Linux, or
Windows operating system that they have administrative privileges
on. An RCC account is helpful, but not required.

## Other information

+ This workshop attempts to apply elements of the
[Software Carpentry approach][swc].
See also
[this article][swc-lessons-learned].
Please also take a look at the [Code of Conduct](conduct.md), and
the [license information](LICENSE.md).

+ To generate PDFs of the slides from the R Markdown source, run `make
slides.pdf` in the [docs](docs) directory. For this to work, you will
need to to install the [rmarkdown][rmarkdown] package in R, as well as
the packages used in [slides.Rmd](code/slides.Rmd). For more details,
see the [Makefile](docs/Makefile).

+ See also the [instructor notes](NOTES.md).

## Credits

These materials were developed by
[Peter Carbonetto](http://pcarbo.github.io) at the
[University of Chicago](https://www.uchicago.edu). Thank you to
[Matthew Stephens](http://stephenslab.uchicago.edu) for his support
and guidance.

[R]: http://cran.r-project.org
[rstudio]: http://rstudio.com
[RCC]: http://rcc.uchicago.edu
[swc]: http://software-carpentry.org/lessons
[swc-lessons-learned]: http://dx.doi.org/10.12688/f1000research.3-62.v2
[rmarkdown]: https://cran.r-project.org/package=rmarkdown
[divvy-data]: https://www.divvybikes.com/system-data
