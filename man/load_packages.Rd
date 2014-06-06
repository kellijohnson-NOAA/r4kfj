\name{load_packages}
\alias{load_packages}
\title{Install and load a character vector of packages}
\usage{
load_packages(mypkg, install.quiet = TRUE)
}
\arguments{
  \item{mypkg}{A character vector of package names.}

  \item{queitly}{A logical argument, ditctating if packages
  are installed and loaded verbosely or not}
}
\description{
Using \code{install.packages} and \code{require} a
character vector of packages is i) checked if packages is
already installed, ii) unistalled packages are installed,
and iii) packages are loaded.
}
\author{
Kelli Faye Johnson
}

