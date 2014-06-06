#' Initialize a file for printing plots
#'
#' A function stolen from Cole Monnahan
#'
#'
#' @author Cole C. Monnahan
#' @author Kelli Faye Johnson
#' @export

make_file <- function(type=c("png","pdf", "none"), filename, width, height, res){
    ## Pass it file type and dimensions in inches. It creates file.
    type <- match.arg(type)
    ## If no extension given, add one
    if(length(grep(type, filename))==0)
        filename <- paste0(filename,".",type)
    if(type=="png") png(filename, width=width, height=height, units="in", res=res)
    else if(type=="pdf"){pdf(filename, width=width, height=height)}
    else if(dev.cur()==1) dev.new(width=width, height=height)
}
