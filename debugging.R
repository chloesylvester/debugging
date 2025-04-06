#code from canvas with a 'deliberate' bug
  tukey_multiple <- function(x) {
    outliers <- array(TRUE,dim=dim(x))
    for (j in 1:ncol(x))
    {
      outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
    }
    outlier.vec <- vector(length=nrow(x))
    for (i in 1:nrow(x))
    { outlier.vec[i] <- all(outliers[i,]) } return(outlier.vec) }

#trying to fix the code
  tukey_multiple <- function(x) {
    outliers <- array(TRUE, dim = dim(x))
    for (j in 1:ncol(x)) {
      outliers[, j] <- tukey.outlier(x[, j])
    }
    outlier.vec <- vector(length = nrow(x))
    for (i in 1:nrow(x)) {
      outlier.vec[i] <- all(outliers[i, ])
    }
    return(outlier.vec)
  }