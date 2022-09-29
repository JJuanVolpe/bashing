#!/bin/bash
<< 'Comment'
17-Escribir un script que al ejecutarse imprima en pantalla los nombre de los archivos que se
encuentran en el directorio actual, intercambiando minúsculas por mayúsculas, además de
eliminar la letra a (mayúscula o minúscula). Ejemplo, directorio actual:
IsO
pepE
Maria
Si ejecuto: ./ejercicio17
Obtendré como resultado:
iSo
PEPe
mRI
Comment

for i in $(ls)
do
    word=$(echo $i | tr  -d "aá" | tr '[:upper:][:lower:]' '[:lower:][:upper:]')
    echo $word
done
