# Descripción

En un curso de informática se le solicitó a los estudiantes que construyan un editor de texto básico que solo admite las siguientes teclas:

- Teclas de la '`a`' a la '`z`' en el alfabeto inglés, es decir las teclas '`abcdefghijklmnopqrstuvwxyz`'.
- La tecla de `espacio` que estará representado por un guión bajo '`_`'.
- Las teclas de dirección `izquierda` y `derecha` que están representados por los caracteres '`<`' y '`>`' respectivamente.

Es importante recordar que las teclas de dirección mueven el cursor del teclado a la izquierda o derecha según sea el caso, si el cursor está al inicio del texto este no se puede moverse más a la izquierda, de la misma forma si el cursor está al final del texto este no se puede moverse más a la derecha. Todas las demás teclas insertan una letra o un guión bajo en la posición actual del cursor y se mueve el cursor una posicion a la derecha.

Dada una secuencia de teclas, imprimir el texto resultante.

# Entrada

Una linea con la secuencia de teclas presionadas por el usuario.

# Salida

La mínima cantidad de números triangulares requeridos.

# Ejemplo

||input
`b<a>d<c>e`
||output
`abcde`
||description
Al inicio se tiene una cadena vacía y solo se muestra el cursor `|`, se inserta la primera letra `b|`, se mueve el cursor a la izquierda `|b`, se inserta la segunda letra `a|b`, se mueve el cursor a la derecha `ab|`, se inserta la tercera letra `abd|`, se mueve el cursor a la izquierda `ab|d`, se inserta la cuarta letra `abc|d`, se mueve el cursor a la derecha `abcd|` y se inserta la última letra `abcde|`.
||input
`c<<<b>>>a<`
||output
`bca`
||description
Al inicio se tiene una cadena vacía `|`, se inserta la primera letra `c|`, se mueve el cursor a la izquierda 3 veces, sin embargo el cursor solo puede moverse hasta el inicio de la cadena como máximo `|c`, se inserta la segunda letra `b|c`, se mueve el cursor 3 veces a la derecha, sin embargo solo puede mover el cursor hasta el final de la cadena como máximo `bc|`, se inserta la última letra `bca|`, se mueve el cursor a la izquierda `bc|a`. La posición final del cursor no es importante.
||input
`o<<<h>la_gra<<<pro>>>>mador`
||output
`hola_programador`
||description
||end

# Límites

$1 \leq Tamaño de cadena \leq 32000$