\name{llgridlines}
\alias{llgridlines}
\title{Plot long-lat grid over projected data}
\usage{
llgridlines(obj, easts, norths, ndiscr = 20, lty = 2, offset = 0.5,
  side = "WS", llcrs = "+proj=longlat +datum=WGS84", plotLines = TRUE,
  plotLabels = TRUE, recenter = FALSE, ...)
}
\arguments{
  \item{map.shape}{A SpatialPointsPolygon to be ploted as
  the base map}

  \item{obj}{object, deriving from Spatial having a defined
  projection}

  \item{easts}{numeric; see \code{\link{rgdal::gridlines}}}

  \item{norths}{numeric; see
  \code{\link{rgdal::gridlines}}}

  \item{ndiscr}{numeric; see
  \code{\link{rgdal::gridlines}}}

  \item{offset}{numeric; see \code{\link{rgdal::gridat}}}

  \item{side}{character; default "WS"; see
  \code{\link{rgdal::gridat}} available from sp 0.9-84.
  Using "EN" will place axis at sides (3,4)}

  \item{lty}{line type to be used for grid lines}

  \item{plotLines}{logical}

  \item{plotLabels}{logical}

  \item{recenter}{logical; should the longlat datum be
  recentered to accomodate data in the middle of the
  Pacific Ocean}

  \item{\ldots{}}{graphics arguments passes to plot
  function for lines and text function for labels}
}
\description{
Plot long-lat grid over projected data. A function taken
and adapted from the rgdal package
}
\author{
Kelli Faye Johnson
}
\seealso{
\code{\link{rgdal::llgridlines}}
}

