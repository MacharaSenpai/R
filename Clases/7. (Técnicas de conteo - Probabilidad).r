#------------------Conceptos en probabilidad-----------------------------------
 
 #-Espacio muestral
 #Es el conjunto de todos los posibles resultados que se pueden obtener al
 #realizar un experimento aleatorio, denotaremos el espacio muestral con la
 #letra S. Ejemplo: Al lanzar un dado normal una vez, el espacio muestral es:
 #S={1,2,3,4,5,6}

 #-Punto muestral: Es cualquier elemento del espacio muestral.

 #-Evento: Es cualquier subconjunto del espacio muestral. Ejemplo: Que al lanzar
 #un dado una vez, estemos interesados en un npumero par. En este caso el evento
 #es A={2,4,6} S={1,2,3,4,5,6}

 #-Evento imposible: Es aqeul que no tiene puntos muestrales (o no tienen
 #elementos que pertenecen al espacio muestral)

 #-Evento seguro: Es aquel que al realizar un exprimento, siempre ocurrirá.

 #-Evento simple: Se dice que un evento es simple si contiene un solo punto
 #muestral. Ejemplo: A={4}, es un evento simple.

 #-Evento compuesto: Se dice que un evento es compuesto, si contiene más de un
 #punto puestral.

 #Eventos disyuntos: Dos eventos son disyuntos si su intersección es vacía, es
 #decir si la ocurrencia de uno de ellos, anula la ocurrencia del otro y
 #viceversa.
#

#------------------Clase-------------------------------------------------------

 #-La importancia del complemento: Cuando entremos a la probabilidad, nosotros
 #vamos a calcular la probabilidad de que sucedan o de encontrar cosas menores
 #a un valor específica, la probabilidad de que algo sea menor a x. Y cuando es
 #mayor a x, se usa el complemento.

 #-Definición empírica de Probabilidad: Sea S el espacio muestral en un
 #experimento aleatorio y sea A un evento de S. Se define la probabilidad de A,
 #denotada, P(A), así:
 #P(A)={Número de casos favorables de A}/{Número total de casos posibles de S}

 #-Definición axiomática: Sea S el espacio muestral de un experimento aleatorio
 #y sea F el conjunto de "todos" los subconjuntos de S, es decir eventos, y sea
 #P una función de P:F->R, se dice que P es una función de probabilidad o
 #tambien simplemente una probabilidad, si y solo si se cumple que:
 #P(A) >= 0 # nolint
 #P(S) = 1 # nolint

 #-Diagrama de árbol: Un árbol de probabilidad o diagrama de árbol es una
 #herramienta que se utiliza para determinar si en realidad en el cálculo
 #de muchas opciones se requiere conocer el número de objetos que forman parte
 #del espacio muestral, estos se pueden determinar con la construcción de un
 #diagrama de árbol.
 
 #-Es una representación gráfica de los posibles resultados del experimento.
 #Para su construcción se partirá poniendo una rama para cada una de las
 #posibilidades, acompañada de su probabilidad o de las opciones si
 #estamos ante un problema de conteo.

 #-Principio de adición: Si un evento A puede realizarse de m maneras
 #diferentes y un evento B puede realizarse de n maneras distintas, y los
 #eventos no pueden darse conjuntamente, entonces el número de formas
 #distintas en que pueden darse los eventos A o B es (m + n).

 #-Principio de multiplicación: Si un evento A puede realizarse de m
 #maneras diferentes y un evento B puede realizarse de n maneras
 #distintas y los eventos pueden darse conjuntamente, entonces el número
 #de formas distintas en que pueden darse los eventos A y B
 #conjuntamente es (m x n).

 #Conclusión: Cuando dos eventos SÍ se pueden dar juntos, se multiplica. Si NO
 #se pueden dar juntos, se suma.

 #-Factorial
 #La función factorial se representa con un signo de exclamación ! detrás de un
 #número. Esta exclamación quiere decir que hay que multiplicar todos los
 #números enteros positivos que hay entre ese número y el 1.
 #Por ejemplo 6! = 6 x 5 x 4 x 3 x 2 x 1 = 720

 #-Permutacion: Es un arreglo ordenado de una cantidad finita de objetos
 #distintos.
 #Piense en una permutación como su fuera un vector, si tenemos el vector
 #(4,5,6), este será diferente del vector (6,5,4), aunque contengan los
 #mismos elementos.
 #De igual modo sucede con la permutación.

 #-Diferencia entre permutación y combinación: Es si el orden ES importante o
 #el orden NO es importante.

 #-Permutaciones de n elementos distintos SIN REPETICIÓN: nPk=n!/(n-k)!, donde
 #n es el conjunto de elementos que tengo, y k es el grupo de cuánto queremos
 #hacer de k en k(ejemplo de hacer un grupo de 3 con importancia del orden)
 #Ese cociente me da la cantidad de formas en la que se puede hacer un grupo de
 #tres con cinco elementos.

 #Si k<=n, quedaría 0!=(1), entonces solo queda n! (cinco personas, grupos de
 #cinco, con ORDEN (sin repetición)

 #-Permitaciones de n elementos distintos CON REPETICIÓN: nPk = n^k
 #Ejemplo: Cinco jugos, y me puedo tomar 3 jugos, pero puedo repetir.
 #n > k # nolint

 #Que yo tenga la palabra MEDELLIN; n=8, ne=2, nl=2, (nn=1, nd=1, ni=1)
 #P= n!=ne!nl!...nk!
#

#------------------Ejemplos----------------------------------------------------
 #¿De cuántas formas diferentes se pueden sentar 5 alumnos en un salón con 5
 #sillas?

 #n=5 k=5; 5! = 120

 library(gtools)
 P <- permutations(5, 5) # nolint
 P <- permutations(5, 5, c("Hola", "Salve", "Hallo", "Bonjour", "Kon'nichiwa")) # nolint
 nrow(P) #Si no coloco esto, muestra las 120 formas, y el orden IMPORTA

 #¿de cuántas formas diferentes se pueden sentar 8 alumnos en un salón con sólo
 #5 sillas?

 #n=8 k=5; 8!/(8-5)!

 S <- permutations(8, 5) # nolint
 nrow(S)

 #¿Cuántos números de 2 cifras CON REPETICIÓN se pueden formar usando todos los
 #siguientes dígitos: 5,7,9?

 P
 nrow(P)

#Con la palabra INFINITO, ¿cuántas palabras se pueden formas? Se pueden repetir

Pr <- function(n, k){ # nolint # nolint

    if(n == sum(k)){ # nolint
        Pr <- factorial(n) / prod(factorial(k)) # nolint
    }
    else {
       Pr <- 'NAN' # nolint
    }
    return(Pr)
}
Pr(8,c(3,2,1,1,1)) # nolint
#