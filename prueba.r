x<-c(61,33,35,74,48,53,53,48,23,19,15,57,72,40,27,25,75,66,34,27,38,16,42,57,27,59,37,63,71,48) # nolint
x <- sort(x) # nolint 
library(fdth)
dist <- fdt(x)
(dist <- fdt(x,
            breaks = 'Sturges')) # nolint

dist

#------------------------------------------------------------------------------
uwu <- c(165, 237, 222, 255, 194) # nolint
range(uwu)
255 - 165 #Rango
var(uwu) #Varianza
sd(uwu) #Desviación
sd(uwu) / mean(uwu) #Coeficiente