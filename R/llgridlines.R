#' Plot long-lat grid over projected data 
#'
#' Plot long-lat grid over projected data.
#' A function taken and adapted from the rgdal package 
#' @author Kelli Faye Johnson
#' @param map.shape A SpatialPointsPolygon to be ploted as the base map
#' @param obj object, deriving from Spatial having a defined projection
#' @param easts numeric; see \code{\link{gridlines}}
#' @param norths numeric; see \code{\link{gridlines}}
#' @param ndiscr numeric; see \code{\link{gridlines}}
#' @param offset numeric; see \code{\link{gridat}}
#' @param side character; default "WS"; see\code{\link{gridat}}
#' available from sp 0.9-84. 
#' Using "EN" will place axis at sides (3,4)
#' @param lty line type to be used for grid lines
#' @param plotLines logical
#' @param plotLabels logical
#' @param \ldots{} graphics arguments passes to plot function for
#' lines and text function for labels
#' @param recenter logical; should the longlat datum be recentered
#' to accomodate data in the middle of the Pacific Ocean
#' @export

llgridlines <- function (obj, easts, norths, ndiscr = 20, lty = 2, offset = 0.5, 
    side = "WS", llcrs = "+proj=longlat +datum=WGS84", plotLines = TRUE, 
    plotLabels = TRUE, recenter = FALSE, ...) 
{
    obj_ll <- spTransform(obj, CRS(llcrs))
    if (recenter) obj_ll <- recenter(obj_ll)
    if (missing(easts)) 
        easts = pretty(bbox(obj_ll)[1, ])
    if (missing(norths)) 
        norths = pretty(bbox(obj_ll)[2, ])
    grd <- gridlines(obj_ll, easts = easts, norths = norths, 
        ndiscr = ndiscr)
    grd_x <- spTransform(grd, CRS(proj4string(obj)))
    if (plotLines) 
        plot(grd_x, add = TRUE, lty = lty, ...)
    if (packageVersion("sp") >= "0.9.84") {
        grdat_ll <- gridat(obj_ll, easts = easts, norths = norths, 
            side = side, offset = offset)
    }
    else {
        grdat_ll <- gridat(obj_ll, easts = easts, norths = norths, 
            offset = offset)
    }
    grdat_x <- spTransform(grdat_ll, CRS(proj4string(obj)))
    if (plotLabels) 
        text(coordinates(grdat_x), labels = parse(text = grdat_x$labels), 
            pos = grdat_x$pos, offset = grdat_x$offset, ...)
}