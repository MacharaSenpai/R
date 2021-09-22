# Gráficos

# **Diagramas circulares**

library(lessR)
library(FactoMineR)
data("tea")
x<-table(tea$How) # nolint
library(RColorBrewer)
color <- brewer.pal(length(row.names(x)), "Pastel1")
PieChart(How, hole = 0, values = "%", data = tea,
         fill = color, main = "How do you take your tea?",quiet = T) # nolint

# **Diagrama de tallo y hoja**

datos <- c(12, 15, 16, 21, 24, 29, 30, 31, 32, 33, 45, 46,
           49, 50, 52, 58, 60, 63, 64, 65)
stem(datos,scale = 2) # nolint


# **Diagrama de barras**

library(BSDA)
data("Sports")
library(RColorBrewer)
coul <- brewer.pal(4, "Set2")
z<-table(Sports$sport) # nolint
barplot(height = z, names=row.names(z),col=coul, main = "Favorite sport by gender", # nolint
        ylab = "Frequency",xlab = "Sport") # nolint


# **Histogramas**

library(mlbench)
data(BostonHousing)
hist(BostonHousing$rm,main = "Average number of rooms per dwelling",xlab = "Number of rooms", # nolint
     col = "palevioletred1")


# **Diagramas de caja y bigote - Boxplot**

library(carData)
data("Davis")
boxplot(Davis$weight ~ Davis$sex,col = "cyan3",xlab="Weight",horizontal = T) # nolint
