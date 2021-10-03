#------------------Tendencia central-------------------------------------------

# Se llaman así porque se ubican en el centro y alrededor de ellos hay otros
#valores
# - Media poblacional: Sumatoria de los valores de la población
#entre la cantidad total de valores.

# - Media muestral: Sumatoria de los valores de la muestra entre
#el total de valores de la muestra.

# - Media recortada: Recortar la muestra sin tener en cuenta los
#valores atípicos.

# - Moda: La frecuencia que más se repite.
# - Mediana: Valor del medio.

# Si es impar: (n+1)/2
# Si es par: Promedio entre (n/2) y (n/2)+1
#

#------------------Calculos----------------------------------------------------
tension <- c(30,75,79,80,80,105,126,138,149,179,179,179,223,232,232,236,240,242,245,247,254,274,384,470) # nolint

mean(tension) #Media
mean(tension, trim = 0.05) #Argumento trim para la recortada al 5%
mean(tension, trim = 0.1) #Argumento trim para la recortada al 10%

library(modeest) #Libreria estimación de la moda
mfv(tension) #Moda

median(tension) #Mediana

summary(tension) #Otros datos
#

#------------------Ejercicio propuesto-----------------------------------------
estaturas <- c(150,150,153,155,157,157,157,158,158,158,160,160,160,163,163,164,165,165,165,166,168,169,169,169,169,170,170,170,170,173,174,175,175,177,178,180,180,183,185,185) # nolint
#Para datos no agrupados sin tabla.
 mean(estaturas) #Media
 
 library(modeest)
 mfv(estaturas) #Moda

 median(estaturas) #Mediana

 summary(estaturas)
#

#Tabla frecuencia no agrupada.
 estaturas

 frec <- table(estaturas);frec
 frec_acu <- cumsum(frec);frec_acu
 frec_rela <- prop.table(frec);frec_rela
 frec_rela_acu <- cumsum(frec_rela);frec_rela_acu

 library(magrittr)
 library(dplyr)

 frec <- as.data.frame(frec);frec
 frec_acu <- as.vector(frec_acu);frec_acu
 frec_rela <- as.vector(frec_rela)
 frec_rela_acu <- as.vector(frec_rela_acu)

 tabla_frecuencias <- cbind(frec, frec_acu,frec_rela,frec_rela_acu);tabla_frecuencias # nolint
#

#Tabla frecuencia agrupada.
 library(fdth)
 (tabla_frecuencias <- fdt(estaturas,
            breaks = 'Sturges')) # nolint

 #Class limits       f   rf rf(%) cf cf(%)
 #  [148.5,153.979)  3 0.07   7.5  3   7.5
 #[153.979,159.457)  7 0.17  17.5 10  25.0
 #[159.457,164.936)  6 0.15  15.0 16  40.0
 #[164.936,170.414) 13 0.32  32.5 29  72.5
 #[170.414,175.893)  4 0.10  10.0 33  82.5
 #[175.893,181.371)  4 0.10  10.0 37  92.5
  #[181.371,186.85)  3 0.07   7.5 40 100.0

#
#------------------Dispersion--------------------------------------------------

#Se orientan a qué tanto los datos son homogéneos o heterogéneos. Qué tan
#dispersos están los datos de los otros.