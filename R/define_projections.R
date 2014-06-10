#' Define equal area and decimal lat/lon projections
#'
#' Defind the projections for i) cylindrical equal area and 
#' ii) decimal latitude and longitude. 
#' @author Kelli Faye Johnson
#' @export

define_projections <- function(){
    # See http://www.spatialreference.org/
    # Alaska Albers Equal Area Conic
    # http://www.spatialreference.org/ref/esri/102006/
    akCRS <<- CRS("+proj=aea 
                   +lat_1=55 +lat_2=65 +lat_0=50 +lon_0=-154 
                   +x_0=0 +y_0=0 
                   +ellps=GRS80 +datum=NAD83 +units=m +no_defs")
    # Cylindrical Equal Area projection
    eaCRS <<- CRS("+proj=cea 
                  +lon_0=Central Meridian +lat_ts=Standard Parallel
                  +x_0=False Easting +y_0=False Northing")
    # Decimal Latitude and Longitude
    llCRS <<- CRS("+proj=longlat +ellps=WGS84")
}