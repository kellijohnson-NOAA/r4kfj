#' Z score a data set
#'
#' 
#' @author Kelli Faye Johnson
#' @param data A data frame.
#' @param log.data Take the log of the response


z_score <- function(data, log.data = FALSE) {
  if(is.matrix(data) == FALSE){
    print("data must be a matrix - converting now!")
    data <- as.matrix(data)  
  }
  if(log.data){
    data[which(data == 0)]<- 0.00001
    data <- log(data)
  }
  data.mean <- apply(data, 1, mean, na.rm = TRUE)
  data.var  <- apply(data, 1, var,  na.rm = TRUE)
  data.res <- (data - data.mean) / sqrt(data.var)
  data.res[which(is.na(data.res))] <- 0
  return(data.res)
}
