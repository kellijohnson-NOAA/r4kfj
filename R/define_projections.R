#' Define equal area and decimal lat/lon projections
#'
#' Defind the projections for i) cylindrical equal area and 
#' ii) decimal latitude and longitude. 
#' @author Kelli Faye Johnson
#' @export

define_projections <- function(){
  # Cylindrical Equal Area projection
  eaCRS <<- CRS('+proj=cea +lon_0=Central Meridian +lat_ts=Standard Parallel
               +x_0=False Easting +y_0=False Northing')
  # Decimal Latitude and Longitude
  llCRS <<- CRS('+proj=longlat +ellps=WGS84')
}