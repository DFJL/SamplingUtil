
#Cargando la librería para obtener los datos
library(foreign)

#Seteando directorio donde se encuentran los datos

dir<- c("C:/Datos")
setwd(dir)

# Cargando la data de la ENAHO 2013
ENAHO2013<- read.spss("ENAHO 2013 EXPERTOS.sav",to.data.frame = TRUE)

enaho2<- sample(1:nrow(ENAHO2013),1000)
enaho2<- ENAHO2013[enaho2,]

save(ENAHO2013, file = "data/ENAHO2013.rdata")
