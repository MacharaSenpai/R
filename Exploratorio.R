#Variables factor, se piensan en variables cualitativas, se pueden representar en diagrama de barras
#base$variable <- as.factor(base$variable)

# Exploratory analysis

# Load data
load("/media/machara/Home/elrey/Documents/Universidad/2021-II/Estadistica I/R/saber.RData")

# Check NA
apply(is.na(data), 2, sum)

# Database size

dim(data) #Dimensiones filas-columnas
ncol(data) #Número de columnas
nrow(data) #Número de filas

# Database header

head(data) #Muestra los seis primeros individudos con todas las variables

# Database tail

tail(data) #Muestra los seis últimos

# Variable names

colnames(data) #Nombre de las columnas (variables)

# Database Structure

str(data) #Cómo son las variables
summary(data) #Resumen de todas las variables

# Frequency table

library(descriptr)
ds_freq_table(data,DESEMP_INGLES)

# Graphics

# Barplot
colegio<-as.data.frame(table(data$COLE_JORNADA));colegio 
library(RColorBrewer)
coul <- brewer.pal(5, "Set3")
barplot(height=colegio$Freq, names=colegio$Var1, col=coul,
        main = "Estudiantes por Jornada",
        ylab = "Cantidad",xlab = " ",las=2,ylim = c(0,10000),cex.names = 0.7,cex.axis = 0.8)

# Histogram

par(mfrow=c(3,1))
hist(data$PUNT_MATEMATICAS,col = "cyan",main = "Histrograma puntaje Matemáticas",
     xlab = "Puntaje",xlim = c(0,100))
hist(data$PUNT_C_NATURALES,col = "cyan3",main = "Histograma puntaje C. Naturales",
     xlab = "Puntaje")
hist(data$PUNT_LECTURA_CRITICA,col = "cyan4",main = "Histrograma puntaje Lectura crítica",
     xlab = "Puntaje")

par(mfrow=c(1,1))
hist(data$PUNT_GLOBAL,col = "turquoise",main = "Histograma puntaje global",
     xlab = "Puntaje")

# Boxplot  

boxplot(data$PUNT_MATEMATICAS,data$PUNT_C_NATURALES,data$PUNT_LECTURA_CRITICA, 
        col = c("cyan","cyan3","cyan4"),horizontal = T,las=1,names = c("Math","C. Nat",
        "Lectura"),boxwex=0.9,staplewex = 0.7,cex.axis=0.8)

# Measures of central tendency

# Mean 
mean(data$PUNT_GLOBAL)

# Trim Mean 
mean(data$PUNT_GLOBAL,trim = 0.05)
mean(data$PUNT_GLOBAL,trim = 0.1)
mean(data$PUNT_GLOBAL,trim = 0.2)

# Mode
library(modeest)
mfv(data$PUNT_GLOBAL)

# Median 
median(data$PUNT_GLOBAL)

# Measure of dispersion

# Variance 
var(data$PUNT_GLOBAL)

# Standard deviation 
sd(data$PUNT_GLOBAL)

# Coefficient of variation 

# Using the function 
library(FinCal)
coefficient.variation(sd=sd(data$PUNT_GLOBAL), avg = mean(data$PUNT_GLOBAL))

# Using the mean and standard deviation 
sd(data$PUNT_GLOBAL)/mean(data$PUNT_GLOBAL)

# Skewness 
skewness(data$PUNT_GLOBAL)

# Kurtosis
library(moments)
kurtosis(data$PUNT_GLOBAL)
