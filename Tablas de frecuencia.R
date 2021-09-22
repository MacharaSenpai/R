# Tablas de frecuencia

edades<-c(54,53, 49, 57, 61, 62, 60, 66, 67, 49, 53, 50, # nolint
            53, 61, 70, 53, 54, 50, 65, 61)
  
Frecuencia<-table(edades);Frecuencia # nolint
Frecuencia_Acumulada<-cumsum(Frecuencia);Frecuencia_Acumulada # nolint
Frecuencia_Relativa<-prop.table(Frecuencia);Frecuencia_Relativa # nolint
Frecuencia_Relativa_Acumulada<-cumsum(Frecuencia_Relativa) # nolint
Frecuencia_Relativa_Acumulada

  
library(magrittr)
library(dplyr)
Frecuencia<-as.data.frame(Frecuencia)  # nolint
Frecuencia_Acumulada<-as.vector(Frecuencia_Acumulada)  # nolint
Relativa<-as.vector(Frecuencia_Relativa) # nolint
Relativa_Acumulada<-as.vector(Frecuencia_Relativa_Acumulada) # nolint
Tabla_de_Frecuencias<-cbind(Frecuencia,Frecuencia_Acumulada,Relativa,Relativa_Acumulada) # nolint
Tabla_de_Frecuencias %<>% rename(Frecuencia = Freq)
Tabla_de_Frecuencias

library(carData)
data("Arrests")
class(Arrests$year)
Arrests$year<-as.factor(Arrests$year) # nolint
class(Arrests$year)

library(descriptr)
ds_freq_table(Arrests,year) # nolint

library(summarytools)
freq(Arrests,year,order = "names",style = "simple") # nolint
  
Estaturas=c(150,150,153,155,157,157,157,158,158,158,160,160,160,163, # nolint
            163,164,165,165,165,166,168,169,169,169,169,170,170,170,170,173,174, 175,175,177,178,180,180,183,185,185) # nolint
library(fdth)
Tabla_Frecuencias<-fdt(Estaturas);Tabla_Frecuencias # nolint

library(BSDA)
data("Puerto")
ds_freq_table(Puerto,income,bins = 6) # nolint