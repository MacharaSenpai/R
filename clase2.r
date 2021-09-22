#---------------------Concepto de estadística------------------------------
 #Estadítica: Recolección, análisis e interpretación
 #de datos para sacar conclusiones.

 #Se hace un muestreo de algo que queramos analizar para tener
 #deciciones y conclusiones de algún suceso.

 #La estadística se aplica en todo: ingeniería, economía, salud
 #deportes, política, clima.
#

#---------------------Conceptos básicos------------------------------------
 # Población: Colección completa de elementos o resultados que se pueden
 #obtener de algo de inteŕes (conjunto de todos los elementos del cual yo quiero
 #saber algo "saber de todos los habitantes de Ciénaga cuántos, cuáles, etc"
 #"En una empresa de arroz, la población sería el lote de arroz")

 # Muestra: Subconjunto represantativo seleccionado de una población. (Las
 #muestras deben ser representativa, por ejemplo, si quiero saber cuántas
 #personas tiene vehículos, y la hago en 10 empresas, todas las perosnas tendrán
 #vehículos y los datos serán erroneos)

 # Muestra aleatoria: Cualquier muestra que haya sido escogida al alzar.
 #(la muestra debe ser aleatoria y representativa de acuerdo a su tamaño)
 # Variable: Característica o propiedad de los elementos de la población.
 #(es eseo que nosostros queremos saber de la población, puede ser el número
 #de hijos, el mayor grado académico, peso, etc.)

 # Parámetros: Resumen numérico de una población *Valor verdadero.
 #(Nos hablan de valores, resultados, etc que tiene la población)

 # Estadísticos: Resumen numérico de una muestra.
 #(Es un valor que obtengo de la muestra que estima lo que es el parámetro.
 #(valor real de promedio de las edades).)
#


#---------------------Tipos de variable------------------------------------

#Por su naturaleza
 
 #-Cualitativas: Son variables que están orientadas a tributos (cualidades
 #de los individuos "color, textura, etc". Estas se dividen en dos:
 
  # Ordinales: Están asosiados a un orden (aún cuando no son numéricos
  #se les puede orden "el nivel de estudio (bachiller, profesional)"
 
  # Nominales: No se le da sentido ordenar los datos para algo.

 #-Cuantitativas: Es algo que se puede contar.

  # Discretas:Saltos entre números enteros, resultado de contar algo
  #(Están orientadas a conteos, tienen números enteros "números de tal que tal")

  # Continuas: Valores entre intérvalos de números reales, resultados de medir
  #algo
  #(Están orientadas a cosas que medimos, tienen números decimales "El peso de
  #una persona")
#


#---------------------Ejemplos---------------------------------------------

# El número de compra de acciones registradas en NYSR en un día
# (Cuantitaviva, continuas)

# Las temperaturas registradas cada hora en las principales cuidades de Colombia
# (Cuantitativa, continuas)

# El número de identificación de los Colombianos mayores de 18 años
# (Cualitativa, nominal)

# El estrato social de los empleados de una empresa
# (Cualitativa, ordinal)

#En los dos últimos ejemplos no son cuantitativos a pesar de que hallan
#números, NO se pueden hacer operaciones


#---------------------Estadística Descriptiva------------------------------

#El nombre nos sugiere que estamos describiendo algo, pero no podemos inferir.
#"Llegas al médico y este te dice que tienes la pálida, de entrada no puede
#decir que realmente tienes tal cosa. Para hacer la INFERENCIA hay que hacer un
#análisis."

#-Es preliminar a la estadística inferencial
#-Resumen y descripción de datos
#-Tabular, gráfico o numérico


#---------------------Distribuciones de frecuencia-------------------------

#-Frecuencia de un dato: Sean x_1, x_2, ... x_n un conjunto de datos distintos.
#La frecuencia de un dato i, denotada como f_i, se define como el número de
#veces que aparece el dato en el conjunto.
#(El número de veces que ese dato aparece en el conjunto)

#-Frecuencia acumulada hasta un dato: Sean x_1, x_2, ... x_n un conjunto de
#datos con frecuencias f_1,f_2,..._f_n respectivamente, se define la
#frecuencia acumulada hasta el dato x_1,i=1,...,n denotada F_i.
#(Sumatoria ordenada y escalonada de la frecuencia de un dato)

#---------------------R----------------------------------------------------

#1ro creamos un vector con los datos
Edades <- c(54,53,49,57,61,62,60,66,67,49,53,50,53,61,70,53,54,50,65,61) # nolint
Edades # nolint

#Calcular frecuencia de un dato
frec <- table(Edades)
frec

#Calcular frecuencia acumulada
frec_acu <- cumsum(frec);frec_acu

#Se colocan librerias
library(magrittr)
library(dplyr)

#Convertir "frec en una base de datos" y sale una tabla de la frecuencia
frec <- as.data.frame(frec)
frec

#Agregar frecuencia acumulada
 #Se convierte "" a un vector

frec_acu <- as.vector(frec_acu);frec_acu

#Unir vector a base de datos
tabla_frecuencias <- cbind(frec, frec_acu)
tabla_frecuencias

#Cambiar el nombre
tabla_frecuencias %<>%  rename(frecuencia = frec)

#Ordenar los datos #menor a mayor
Edades <- sort(Edades) # nolint 
Edades # nolint

#Ordenar los daltos mayor a menor
Edades <- sort(Edades, decreasing = TRUE) # nolint
Edades # nolint

#Calculo frecuencia relativa
frec_rela <- prop.table(frec)
frec_rela

#Calculo frecuencia relativa acumulada
frec_rela_acu <- cumsum(frec_rela)
frec_rela_acu

#Tabla datos no agrupados
