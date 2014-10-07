

#'Calculo de tamaños muestrales
#'
#' Funcion para generar una muestra con control de error absoluto o relativo.
#' @param x: Columna base para calcular tamaño de muestra.
#' @param r: Error relativo.
#' @param abs: Error absoluto.
#' @param alpha: Riesgo alpha de que el error real supere r.
#' @return lista con n0 y n ajustado.
#' @export
#' @references Basado en slides del curso Topicos de Muestreo.Universidad de Costa Rica.
nsize<-function(x,r=0,abs=0,alpha=0.05){
  z<-qnorm(1-(alpha/2))
  s<- sd(x)
  if(abs>0 && r>0){
    stop("Se evalúa solamente el error relativo o absoluto")}
    else{
      if(r>0 && abs==0 && max(x)>1){
        #Calculo de componentes de la formula relativa
        errorabs<-r*mean(x)
        n0<- round((z*s/errorabs)^2,0)
      }
      else{
        if(r==0 && abs>0 && min(x)>=0 && max(x)<=1){
          #Calculo de componentes de la formula absoluta
          n0<- round((z*s/abs)^2,0)
        }
        else{
          #Calculo de componentes de la formula para variables dicotomicas
          n0<- round(z^2*(mean(x)*(1-mean(x)))/abs^2,0)
        }
      }
      }
  n<-round((n0/(1+(n0/length(x)))))
  sizes<- list(n0=n0,n_adjust=n)
  return(sizes)  
}
