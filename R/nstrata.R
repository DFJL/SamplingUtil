
#'Calculo de tamaños muestrales en estratos
#'
#' Funcion para distribuir la muestra en los estratos.
#' @param n: Tamaño de la muestra total.
#' @param wh: Objeto on las proporciones por estrato.
#' @param method: Método de asignación de la muestra a los estratos.
#' @param alpha: Riesgo alpha de que el error real supere r.
#' @return Objeto con muestra distribuida por estrato.
#' @export
#' @references Basado en slides del curso Topicos de Muestreo.Universidad de Costa Rica.
nstrata<-function(n,wh,method=c("proportional")){
  nh<-rep(0,length(wh))
  if (method=="proportional"){
    nh<-ceiling(n*wh)
  }
  return(nh)
}