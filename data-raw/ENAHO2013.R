
#Cargando la librería para obtener los datos
library(foreign)

#Seteando directorio donde se encuentran los datos(Se deben incluir al directorio raiz del proyecto)

dir<- c("C:/Datos/SamplingUtil")
setwd(dir)

# Cargando la data de la ENAHO 2013
ENAHO2013<- read.spss("ENAHO 2013 EXPERTOS.sav",to.data.frame = TRUE)


save(ENAHO2013, file = "data/ENAHO2013.rdata")
