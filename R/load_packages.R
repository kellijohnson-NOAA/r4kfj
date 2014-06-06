#' Install and load a character vector of packages
#'
#' Using \code{install.packages} and \code{require} a character
#' vector of packages is i) checked if packages is already installed,
#' ii) unistalled packages are installed, and iii) packages are 
#' loaded. 
#' @author Kelli Faye Johnson
#' @param mypkg A character vector of package names.
#' @param queitly A logical argument, ditctating if packages
#' are installed and loaded verbosely or not
#' @export

load_packages <- function(mypkg, install.quiet = TRUE) {
  current.packages <- installed.packages()[, 1]
  results <- which(is.element(mypkg, current.packages) == FALSE)
  install.me <- mypkg[results]
  if(length(install.me) > 0){
    r <- getOption("repos")
    r["CRAN"] <- "http://cran.stat.sfu.ca"
    options(repos) <- r
    install.packages(install.me, quiet = install.quiet)
  }
  if(install.quiet == TRUE){
  	quietly.warn <- FALSE
  }
  print.me <- lapply(mypkg, require, character.only = TRUE, 
                     quietly = install.quiet, warn.conflicts = quietly.warn)
  if(install.quiet == FALSE) return(unlist(print.me))
}

