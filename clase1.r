# para usar comentarios se usa #

#RStudio como una calculadora

#Para que haga algo se pone en la linea que quiero correr y undo
#ctrl+enter  # nolint
2 + 7

#Número pi
54 / pi
pi

#raíz cuadrada
sqrt(9)

#Declarar una variable

x <- 2021
x + 3

#imprimir algo
print("Salve")
cat("Salve", x) #Imprime letras con una variable

x <- 1996 #acá reemplaza 2021 con 1996

#Ayuda de una función

help(cat)
?cat

x - 1000

#Determinar clases

a <- "Statictics";a #Se pone "a" al final para mostrar en la consola

#Para saber qué clase es 
class(a)
b <- 2021
class(b)
c <- 2021L #Para hacer que sea entero se pone L a lo último
class(c)
d <- 5 / 0
class(d)
d
e <- 2021 + 2i
class(e)

#Crear vectores
f <- c(1,2,3,4) #La C es para unir varias cosas
f
g <- c(34,"l",56)
g
length(f) #tamaño del vector

#Crear vector
h <- vector("numeric", 8) #Crea un vector de 8 ceros
h

i <- 5:20;i #crea un vector del 5 al 20

j <- seq(from = 5,to = 20,by = 2);j #cuenta de 5 hasta 20 en dos por dos
k <- seq(from = 4,by = 3,length.out = 105);k #Vector de 4 en 3 en 3 de tamaño n
