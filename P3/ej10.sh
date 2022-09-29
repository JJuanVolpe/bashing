#!bin/bash

<< 'Comment'
10 ¿Qué tipo de variables existen?
    Strings y Arrays
 ¿Es shell script fuertemente tipado?
 No
¿Se pueden definir arreglos? ¿Cómo?
Si.
arr=()
arr=(juan elias manteca)

Acceso a todos los valores del arreglo:
echo ${arreglo[@]} # o bien ${arreglo[*]}
{#arreglo[@]} # o bien ${#arreglo[*]}

arreglo=(1 2 3 5 8 13 21)
arreglo[2]=spam
echo "El primer elemento es ${arreglo[0]}"
echo "El tercer elemento es ${arreglo[2]}"
echo "La longitud: ${#arreglo[*]}"
echo "Todos sus elementos: ${arreglo[*]}"
Comment

arr=(juan elias manteca)
echo ${arr[*]}