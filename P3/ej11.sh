#!/bin/bash
<< 'Comment'
11- ¿Pueden definirse funciones dentro de un script?
    SI
 ¿Cómo?
    Se pueden declarar de 2 formas:
• function nombre { block }
• nombre() { block }
• Con la sentencia return se retorna un valor entre 0 y 255
• El valor de retorno se puede evaluar mediante la variable $?
.
 ¿Cómo se maneja el pasaje de parámetros de una función a la otra?
    Reciben argumentos en las variables $1, $2, etc,

echo "Hola" $1;
echo "Hola" $2;
echo "Nombre del fichero:" $0;
echo "Numero de parametros": $#;
echo "Todos los parametros menos el 0": $*;


Comment