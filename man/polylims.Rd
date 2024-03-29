% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polylims.R
\name{polylims}
\alias{polylims}
\title{Create output necessary for plotting polygons
A function to find the beginings and endings of each run of real numbers
in a set of data, in order to create polygons for plotting. The assumption
is that ydata, ydata2, and xdata vectors are the same length, and that 
the ydata and ydata2 vectors contain NA values for missing data. The 
same values in ydata and ydata2 must be missing. The output will be 
a list of data frames of x and y values suitable for plotting polygons.
http://lukemiller.org/index.php/2012/12/generating-polygon-boundaries-for-plotting-simple-time-series-data-with-missing-data/}
\usage{
polylims(xdata, ydata, ydata2)
}
\arguments{
\item{xdata}{x axis data}

\item{ydata}{top of polygon}

\item{ydata2}{bottom of polygon}
}
\description{
Create output necessary for plotting polygons
A function to find the beginings and endings of each run of real numbers
in a set of data, in order to create polygons for plotting. The assumption
is that ydata, ydata2, and xdata vectors are the same length, and that 
the ydata and ydata2 vectors contain NA values for missing data. The 
same values in ydata and ydata2 must be missing. The output will be 
a list of data frames of x and y values suitable for plotting polygons.
http://lukemiller.org/index.php/2012/12/generating-polygon-boundaries-for-plotting-simple-time-series-data-with-missing-data/
}
\author{
Kelli Faye Johnson

Luke Miller
}
