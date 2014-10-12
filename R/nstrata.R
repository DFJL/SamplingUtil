
#'Calculo de tamaños muestrales en estratos
#'
#' Funcion para distribuir la muestra en los estratos.
#' @param n: Tamaño de la muestra total.
#' @param wh: Objeto on las proporciones por estrato.
#' @param sh: Desviación de cada estrato.
#' @param ch: Costo por entrevista .
#' @param method: Método de asignación de la muestra a los estratos.
#' @return Objeto con muestra distribuida por estrato.
#' @export
#' @references Basado en slides del curso Topicos de Muestreo.Universidad de Costa Rica.
nstrata<- function(n,wh,sh=0,ch=0,method=c("proportional","optimal")){
  nh<-rep(0,length(wh))
  if (method=="proportional"){
    nh<-ceiling(n*wh)}
  else{
    if(method=="optimal" && ch!=0){
      nh<-ceiling(n*((wh*sh)/sqrt(ch))/(sum(((wh*sh)/sqrt(ch)))))
    }
  }
  return(nh)
}