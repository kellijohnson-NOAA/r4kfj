#' Remove unwanted files after using knitr
#'
#' 
#' @author Kelli Faye Johnson
#' @param workingdir specifiy the working directory
#' @export

knitr_clean <- function(workingdir = NA) {
  if(!is.na(workingdir)) {
    useThisDir <- workingdir
  } else {
    useThisDir <- getwd()
  }
  system(paste0(
    "cd '", useThisDir, "'",
    ";rm *.gz;rm *.toc;rm *.tex;rm *.log"
  ))
}

