# Descripción

Un despiadado rey ha organizado un concurso de peleas a muerte con las siguientes
características:

1. Cada pelea se da entre las dos peleadores mas fuertes de todo el grupo de peleadores, si solo queda un solo peleador el concurso termina.
1. Si ambos peleadores tienen la misma fuerza, ambos combatientes terminaran muertos, en cambio si uno de los peleadores es más fuerte que el otro, este matará al más débil, sin embargo su poder quedará disminuido en una cantidad igual al poder del más débil y volverá al grupo de peleadores.
1. Los pasos 1 y 2 se repetirán hasta que quede un solo peleador vivo o no quede ninguno.

Al final del concurso se desea saber cuántas peleas se dieron y cuál es el poder del peleador que sobrevive al final, si no sobrevive ningún peleador se debe imprimir -1 en su lugar.

# Entrada

La entrada  esta compuesta de dos lineas, la primera línea representa el numero de peleadores $N$ y la segunda linea estara la lista de fuerza de los $N$ peleadores separados por un espacio.

# Salida

La salida sera una única línea que mostrara el número total de peleas y la fuerza del último peleador, en caso de no exista un último peleador se debe imprimir $-1$ en su lugar.

# Ejemplo

||input
5
1 5 2 4 3
||output
3 1
||description
Al inicio, la fuerza de los peleadores es: $1, 5, 2, 4, 3$.

1. En la primera pelea se enfrentan los dos peleadores con más fuerza $5$ y $4$, al final de la pelea el ganador será el peleador con la fuerza $5$, pero su poder se verá disminuido en $5 - 4 = 1$ y volverá con esta fuerza al grupo de peleadores, quedando la siguiente distribución de fuerzas: $1, 2, 3, 1$.

1. En la segunda pelea se enfrentan los dos peleadores con más fuerza $2$ y $3$, al final de la pelea el ganador será el peleador con la fuerza $3$, su poder se verá disminuido en $3 - 2 = 1$ y volverá al grupo de peleadores, quedando la siguiente distribución de fuerzas: $1, 1, 1$.

1. En la tercera pelea se enfrentan dos peleadores con fuerzas $1$ y $1$, ambos peleadores mueren por que tienen la misma fuerza, por lo tanto la distribución de fuerzas que queda es la siguiente: $1$

1. No existen más peleas por que solo queda un único peleador en el grupo.

Por lo tanto se dieron 3 peleas y el poder del último peleador es 1.
||input
4
3 1 1 3
||output
2 -1
||description
Luego de la pelea entre $3$ y $3$ ambos mueren y solo queda $1, 1$ y luego de la pelea entre $1$ y $1$ mueren ambos, por lo tanto se dieron 2 peleas y no quedo ningun peleador.
||input
2
7 9
||output
1 2
||end

# Límites

* $ 2 \leq N <= 32000 $
* $ 1 \leq F[i] < 10^{9} $, donde $F[i]$ representa la fuerza el peleador $i$
