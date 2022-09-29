#!bin/bash

<< 'Comment'
5. ¿Cual es la funcionalidad de comando exit? ¿Qué valores recibe como parámetro y cual es
su significado?
    
Para terminar un script usualmente se utiliza la funci ́on exit:
 Causa la terminacion de un script
 Puede devolver cualquier valor entre 0 y 255:
 El valor 0 indica que el script se ejecut ́o de forma exitosa
 Un valor distinto indica un c ́odigo de error
 Se puede consultar el exit status imprimiendo la variable $?

Comment

#Recibe parámetros -a CADENA o -b CADENA
#$1 nombre del directorio, $2 es -a รณ -b, $3 es CADENA
#Ejemplo de Ejecución bash -x ejercicio14RenombraArchivos
if [ $# -ne 3 ]
then
    echo "La Cantidad de parametros es incorrecta"
    exit 1
fi
if [ ! -d $1 ]
then
    echo "El primer parametro no es un directorio existente"
    exit 2
fi
if [ -z $3 ]
then
    echo "El tercer parametro es nulo"
    exit 3
fi

case $2 in
    "-a")
     for i in `ls $1`; do
        mv $1/$i $1/$i$3
     done
    ;;
    "-b")
     for i in `ls $1`; do
        mv $1/$i $1/$3$i
     done
    ;;
    *)
    echo "El segundo parametro debe ser -a o -b"
    exit 4
esac