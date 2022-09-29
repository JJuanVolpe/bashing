#!/bin/bash
<< 'Comment'
4. Parametrización: ¿Cómo se acceden a los parámetros enviados al script al momento de su
invocación? 
    A traves de $n, donde n es un numero de 1 a 9.

¿Qué información contienen las variables $#, $*, $? Y $HOME dentro de un script?
    $#: Indica el número de parámetros pasados al script
    $*: La variable $* nos devuelve todos los argumentos recibidos por el script o función
    $?: Se puede consultar el exit status imprimiendo la variable $?
    $HOME: Imprime el directorio principal del usuario creador del script?
Comment

echo $HOME