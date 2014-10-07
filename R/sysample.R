

#'Generar una muestra sistematica
#'
#' Función para generar una muestra con algoritmo sistematico de n elementos de un total de N.
#' @param N: Total de elementos de la Poblacion.
#' @param n: Elementos a seleccionar en la muestra.
#' @return objeto con los elementos seleccionados.
#' @export
#' @description Funcion tomada de http://fisher.utstat.utoronto.ca/~mahinda/stac50/Rcode_sysSampling.txt
sys.sample <- function(N,n){
  k <- floor(N/n) 
  r <- sample(1:k, 1)
  sys.samp <- seq(r, r + k*(n-1), k)
  return(sys.samp)
}
