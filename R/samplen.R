#' @title sample size by boostrap
#'
#' @description Estimate the bootstrap error
#'
#' @param data A numerical vector.
#' @param n An integer.
#'
#' @return An confidence interval for the error mean.
#'
#' @examples
#' data(cookie)
#' samplen(cookie$color, 31)
#' # male
#' samplen(cookie$color[cookie$gender==1], 35)

samplen<-function(data, n, typeCI=3, nboot=1000){
E<-c()
for(i in 1:500){
  x<-sample(data, n, replace = F)
  theta <- function(x){mean(x)}
  results <- bootstrap(x, nboot, theta)
  E[i]<-(quantile(results$thetastar, probs=.975 ,type=typeCI, names=F)-quantile(results$thetastar, probs=.025 ,type=typeCI, names=F))/2
}
return(CI(E))
}
