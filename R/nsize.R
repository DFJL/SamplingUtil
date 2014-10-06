

#'Calculo de tamaños muestrales
#'
#' Funcion para generar una muestra con control de error absoluto o relativo.
#' @param df: Data frame con datos para calcular media y variancia.
#' @param x: Columna base para calcular tamaño de muestra.
#' @param r: Error relativo.
#' @param alpha: Riesgo alpha de que el error real supere r.
#' @return lista con n0 y n ajustado.
#' @export
#' @description Basado en slides del curso Topicos de Muestreo.Universidad de Costa Rica.
nsize<-function(df,x,r,alpha=0.05){
  #Calculo de componentes de la formula
  z<-qnorm(1-(alpha/2))
  s<- sd(df$x)
  errorabs<-r*mean(df$x)
  #Calculo de tamaño de muestra
  n0<- round((z*s/errorabs)^2,0)
  n<-round((n0/(1+(n0/length(df$x)))))
  sizes<- list(n0=n0,n_adjust=n)
  return(sizes)
  
}