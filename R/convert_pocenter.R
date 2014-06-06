#' Convert from Lat/Lon to Pacific Ocean centered Lat/Lon
#'
#' Methods for \code{convert_pocenter} to shift or re-center geographical
#' coordinates for a Pacific Ocean view. 
#' All longitudes < 0 are added to 360, to avoid, for istance, parts of Alaska
#' being plotted on the far right and left 
#' because they have values straddling 180 degrees.
#' Using a projected coordinate reference system is to be prefered, 
#' but this function allows raw data (i.e. non SpatialPolgyon data) to
#' be plotted appropriately. 
#' This can also be accompolished using \code{\link{sp::recenter}}.
#' This idea was suggested by Greg Snow, 
#' and corresponds to the two world representations in the maps package.
#' @author Kelli Faye Johnson
#' @param data A data frame or matrix containing unique columns
#' for latitude and longitude. Names can be abreviated as long as
#' they contain "lon" and "lat" (case-insensitive).
#' @seealso \code{\link{sp::recenter}}
#' @export

convert_pocenter <- function(data){
    column.lon <- grep("Lon", names(data), ignore.case = TRUE)
    column.lat <- grep("Lat", names(data), ignore.case = TRUE)
    if(length(column.lon) != 1){
        stop("longitude must be a unique column in the data")
    }
    if(length(column.lat) != 1){
        stop("latitude must be a unique column in the data")
    }
    ## convert Longitude to Pacific Ocean centered data for plotting
    data[, column.lon] <- data[, column.lon] %% 360
    coordinates(data) <- c(column.lon, column.lat)
    return(data)
}