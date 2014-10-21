
#'Sample size calculation for strata
#'
#' Assign sample size to strata.Supports three methods(proportional,optimal and Neyman)
#' @param n: Total sample size.
#' @param wh: Data object with the proportions for each strata.
#' @param sh:  Data object with the standard deviations for each strata.
#' @param ch:  Data object with the cost for each strata.
#' @param method: Method of sample allocation to strata("proportional", "optimal", "neyman")
#' @return Data object with the sample size for each strata.
#' @export
#' @references Based in the slides of Sampling Topics course.University of Costa Rica.
nstrata<-function(n,wh,sh=NULL,ch=NULL,method="proportional"){
  nh<-rep(0,length(wh))
  method <- match.arg(method, c("proportional", "optimal", "neyman"))
  if (method=="proportional"){
    nh<-ceiling(n*wh)}
  else{
    if(method=="optimal" 
       && is.null(ch)==FALSE){
      nh<-ceiling(n*((wh*sh)/sqrt(ch))/(sum(((wh*sh)/sqrt(ch)))))
    }
    else{
      if(method=="neyman" 
         && is.null(ch)==TRUE 
         && is.null(sh)==FALSE){
        nh<- ceiling(n*((wh*sh)/sum((wh*sh))))
      }
    }
  }
  return(nh)
}