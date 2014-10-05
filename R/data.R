
#Cargando la librería para obtener los datos
library(foreign)

#Seteando directorio donde se encuentran los datos

dir<- c("C:/Datos/SamplingUtil_package/SamplingUtil")
setwd(dir)

# Cargando la data de la ENAHO 2013
ENAHO2013<- read.spss("ENAHO 2013 EXPERTOS.sav",to.data.frame = TRUE)


#' Cargar data de la ENAHO 2013
#' 
#' Carga en un dataframe la data de la ENAHO 2013
#' @param No requiere argumentos.
#' @format Dataframe con la data ENAHO 2013.
#' @description Para el detalle y diccionario de datos ir a la direccion:http://www.inec.go.cr/anda4/index.php/catalog/130/accesspolicy
#' @export
ENAHO_2013<- function(){
  return(ENAHO2013)
}