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

#------------------Dispersion--------------------------------------------------

#Se orientan a qué tanto los datos son homogéneos o heterogéneos. Qué tan
#dispersos están los datos de los otros.