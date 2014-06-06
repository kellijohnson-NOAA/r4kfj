#' Turn off device created from make_file
#'
#' A function stolen from Cole Monnahan
#' @author Cole C. Monnahan
#' @author Kelli Faye Johnson

make_file_off <- function(){
    xx <- names(dev.cur())
    if(length(grep("png", xx))==1 | length(grep("pdf",xx))==1)
        dev.off()
}
