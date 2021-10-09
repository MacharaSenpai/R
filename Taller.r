#------------------Carga de la base de datos al sistema.-----------------------
library(readxl)

Movies_gross_rating <- read_excel("/media/machara/Home/elrey/Documents/Universidad/2021-II/Estadistica I/Movies_gross_rating.xlsx") # nolint

View(Movies_gross_rating)

#------------------Desarrolo del punto 1)--------------------------------------
 
 #Punto a)    Tabla de frecuencia para la variable "Genre"
 
 Movies_gross_rating$Genre <- as.factor(Movies_gross_rating$Genre) #Convertir la variable Genre como factor# nolint
 
 class(Movies_gross_rating$Genre) #Clase "factor"
 
 library(descriptr) #Se carga la librería "descriptr"
 
 ds_freq_table(Movies_gross_rating, Genre) #Se crea una tabla de frecuencias para la variable "Genre" # nolint

 #    Gráfico de barras
 library(BSDA) #Carga de la librería.
 library(RColorBrewer) #Carga de la librería.
 
 grafico <- table(Movies_gross_rating$Genre) #La variable "grafico" guardará el gráfico de barras # nolint
 
 barp <- barplot(grafico,
        main = "Películas por géneros", #nombre del gráfico
        ylab = "Frecuencia", #Nombre del eje Y
        ylim = c(0, 100), #Rango del eje Y
        col = c("darkgrey", "darkblue", "red", "green", "blue", "black", #Color
        "pink", "slateblue3", "violetred1", "tan2", "orchid4", "seagreen",
        "thistle4", "sienna4", "#312568", "#40d3dd"),
        legend.text = rownames(grafico), #Leyenda
        args.legend = list(x = "topright",inset = c(-0.13, -0.25)), #Posición de leyenda # nolint
        beside = TRUE)
        text(barp, grafico + 0.5, labels = grafico) #Valor frecuencia barra

 #Punto c)    Media, mediana y moda
 #Media
 mean(Movies_gross_rating$Rating)

 #Moda
 library(modeest)
 
 mfv(Movies_gross_rating$Rating)

 #Mediana
 median(Movies_gross_rating$Rating)

 #Punto d)    Rango, Variación, Desviación, Asimetría, Curtosis, Histograma
  
  #Rango, mínimo, máximo
  range(Movies_gross_rating$Rating)
  
  min(Movies_gross_rating$Rating)
  max(Movies_gross_rating$Rating)
  
  max(Movies_gross_rating$Rating) - min(Movies_gross_rating$Rating)

  #Variación,Desviación estándar
  var(Movies_gross_rating$Rating)
  sd(Movies_gross_rating$Rating)

  sd(Movies_gross_rating$Rating) / mean(Movies_gross_rating$Rating)

  #Coeficiente de variación
  library(FinCal)
  
  coefficient.variation(sd=sd(Movies_gross_rating$Rating), avg=mean(Movies_gross_rating$Rating)) # nolint

  #Asimetría, Curtosis
  library(moments)
  
  skewness(Movies_gross_rating$Rating)
  kurtosis(Movies_gross_rating$Rating)

  #Histograma Rating
  library(mlbench)
  
  hist(Movies_gross_rating$Rating, main = "Rating", xlab = "Rating",
          col = "hotpink")
 
 #Punto e)    Cuantiles, Boxplot
 
 #Cuantiles (y cuartiles)
 summary(Movies_gross_rating$Runtime)

 #Boxplot
 library(carData)
 
 boxplot(Movies_gross_rating$Runtime,col = "hotpink",xlab="Minutos",horizontal = T) # nolint

 #Punto f)    Moda, Cuantiles, Boxplot de complemento
 #Moda
 library(modeest)
 
 mfv(Movies_gross_rating$Budget)

 #Cuartiles y media
 summary(Movies_gross_rating$Budget)

 #Boxplot de complemento
 library(carData)
 
 boxplot(Movies_gross_rating$Budget,col = "hotpink",xlab="Presupuesto",horizontal = T) # nolint

#

#------------------Desarrollo del punto 2)-------------------------------------
  #Tabla de frecuencias
  library(FactoMineR)
  library(descriptr)
  
  data("tea")
  
  ds_freq_table(tea, age, bins = 7)
  
  #Rango
  range(tea$age)
  max(tea$age) - min(tea$age)
  
  #Número de clases
  # bins = 7 # nolint
  
  #Amplitud de clases
  # Rango/Número de clases
  amplitud <- 75 / 7;amplitud
  
  #Media
  mean(tea$age)
  
  #Moda
  library(modeest)
 
  mfv(tea$age)
  
  #Mediana
  median(tea$age)
#