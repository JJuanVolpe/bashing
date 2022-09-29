#!/bin/bash
<< 'Comment'
16. Realizar un script que reciba como parámetro una extensión y haga un reporte con 2
columnas, el nombre de usuario y la cantidad de archivos que posee con esa extensión.
Se debe guardar el resultado en un archivo llamado reporte.txt
Comment

if [ ! -f reporte.txt ]; then
    > reporte.txt
    head=" USUARIO  |  EXT - N° Lineas"
    echo $head >>reporte.txt
fi;
var="$(whoami)   ext:$1 y n° lineas: $(find $HOME -name "*.$1" | wc -l) "
echo $var >>reporte.txt 
