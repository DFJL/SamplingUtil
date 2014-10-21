

#'Sample size calculation
#'
#' Calculate sample sizes(absolute and relative error for continuous or dichotomous variables).
#' @param x: Base vector with data for calculate sample size.
#' @param r: Relative error.
#' @param abs: Absolute error.
#' @param alpha: Alpha risk that the actual error exceeds r.
#' @return list with n0 and adjust n.
#' @export
#' @references Based in the slides of Sampling Topics course.University of Costa Rica.
nsize<-function(x,r=0,abs=0,alpha=0.05){
  z<-qnorm(1-(alpha/2))
  s<- sd(x)
  if(abs>0 && r>0){
    stop("Only the absolute or relative error is evaluated")}
    else{
      if(r>0 && abs==0 && max(x)>1){
        #Components of relative formula
        errorabs<-r*mean(x)
        n0<- round((z*s/errorabs)^2,0)
      }
      else{
        if(r==0 && abs>0 && max(x)>1){
          #Components of absolute formula
          n0<- round((z*s/abs)^2,0)
        }
        else{
          #Components of proportion formula
          n0<- round(z^2*(mean(x)*(1-mean(x)))/abs^2,0)
        }
      }
      }
  n<-round((n0/(1+(n0/length(x)))))
  sizes<- list(n0=n0,n_adjust=n)
  return(sizes)  
}
