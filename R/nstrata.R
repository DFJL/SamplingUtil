
#'Calculo de tamaños muestrales en estratos
#'
#' Funcion para distribuir la muestra en los estratos.
#' @param n: Tamaño de la muestra total.
#' @param wh: Objeto on las proporciones por estrato.
#' @param sh: Desviación de cada estrato.
#' @param ch: Costo por entrevista .
#' @param method: Método de asignación de la muestra a los estratos("proportional", "optimal", "neyman")
#' @return Objeto con muestra distribuida por estrato.
#' @export
#' @references Basado en slides del curso Topicos de Muestreo.Universidad de Costa Rica.
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