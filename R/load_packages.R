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
  if (!all(is.character(mypkg))) {
    mypkg <- sapply(mypkg, as.character)
  }
  current.packages <- installed.packages()[, "Package"]
  install.me <- mypkg[!mypkg %in% current.packages]
  if(length(install.me) > 0){
    install.packages(install.me, repos = "http://cran.stat.sfu.ca",
      quiet = install.quiet)
  }
  print.me <- lapply(mypkg, library, character.only = TRUE,
    quietly = install.quiet, warn.conflicts = !install.quiet)
}
