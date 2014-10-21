

#'Systematic Sample selection
#'
#' Select a sample with systematic algorithm.
#' @param N: Total elements of population.
#' @param n: Sample size.
#' @return Data object with the selected elements.
#' @export
#' @references Function taked from http://fisher.utstat.utoronto.ca/~mahinda/stac50/Rcode_sysSampling.txt
sys.sample <- function(N,n){
  k <- floor(N/n) 
  r <- sample(1:k, 1)
  sys.samp <- seq(r, r + k*(n-1), k)
  return(sys.samp)
}
