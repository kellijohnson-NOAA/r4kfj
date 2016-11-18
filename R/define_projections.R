#' Define equal projections and globally assign them.
#'
#' Defind the projections for
#'   \enumerate{
#'     \item Alaska Albers
#'     \item cylindrical equal area
#'     \item decimal latitude and longitude.
#'   }
#' See \href{http://www.spatialreference.org/}{Spatial Reference}
#'
#' @importFrom sp CRS
#' @author Kelli Faye Johnson
#' @export

define_projections <- function(){
    # See http://www.spatialreference.org/
    # Alaska Albers Equal Area Conic
    # http://www.spatialreference.org/ref/esri/102006/
    akCRS <<- sp::CRS("+proj=aea
                   +lat_1=55 +lat_2=65 +lat_0=50 +lon_0=-154
                   +x_0=0 +y_0=0
                   +ellps=GRS80 +datum=NAD83 +units=km +no_defs")
    # Cylindrical Equal Area projection
    eaCRS <<- sp::CRS("+proj=cea
                  +lon_0=Central Meridian +lat_ts=Standard Parallel
                  +x_0=False Easting +y_0=False Northing")
    # Decimal Latitude and Longitude
    llCRS <<- sp::CRS("+proj=longlat +ellps=WGS84")
}
