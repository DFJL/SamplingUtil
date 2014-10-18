
#Cargando la librería para obtener los datos
library(foreign)

#Seteando directorio donde se encuentran los datos(Se deben incluir al directorio raiz del proyecto)

dir<- c("C:/Datos/SamplingUtil_package/SamplingUtil")

setwd(dir)

# Cargando la data de la ENAHO 2013
ENAHO2012<- read.spss("ENAHO 2012.sav",to.data.frame = TRUE)


save(ENAHO2012, file = "data/ENAHO2012.rdata")
