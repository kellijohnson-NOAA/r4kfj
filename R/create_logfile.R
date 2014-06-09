#' Initialize a log file for the current work
#'
#'  
#' @author Kelli Faye Johnson
#' @param projectName A character value giving the name of the project
#' which will be used to create the file name.
#' @param projectDir A character value giving the working directory
#' for the project. The default is the current working directory.
#' @export

create_logfile <- function(projectName, projectDir = NA) {
    if(!is.na(projectDir)) {
        old.wd <- getwd()
        on.exit(setwd(old.wd))
        setwd(projectDir)
    }
    my.filename <- paste0(projectName,
                          "_log_",
                          format(Sys.time(), "%Y%m%d%_%H%M%S"),
                      ".txt")
    sink(file = my.filename, append = FALSE)
    cat(my.filename, "\n")
    cat("Log file created for Kelli Faye Johnson \n")
    cat("date:", format(Sys.time(), "%Y-%m-%d %H:%M:%S"), "\n")
    cat("computer:", Sys.info()["nodename"], "\n")
    sink()
    return(my.filename)
}
