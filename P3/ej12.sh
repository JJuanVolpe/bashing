#!/bin/bash
<< 'Comment'
12. Evaluación de expresiones:
(a) Realizar un script que le solicite al usuario 2 números, los lea de la entrada Standard
e imprima la multiplicación, suma, resta y cual es el mayor de los números leídos.
(b) Modificar el script creado en el inciso anterior para que los números sean recibidos
como parámetros. El script debe controlar que los dos parámetros sean enviados.
(c) Realizar una calculadora que ejecute las 4 operaciones básicas: +, - ,*, %. Esta calcu-
ladora debe funcionar recibiendo la operación y los números como parámetros

Comment

#a)
#read -p "A continuacion ingrese 1 numero a comparar: " number_a 
#read -p "A continuacion ingrese otro numero a comparar: " number_b
#if [ $number_a ] && [ $number_b ]; then
#    [[ $number_a -gt $number_b ]] && res=$number_a || res=$number_b
#    echo "El mayor es:"$res
#    echo "Multiplicacion entre ambos:`expr $number_a \* $number_b `"
#    echo "Suma entre ambos es:`expr $number_a + $number_b `"
#    echo "Resta n°1 - n°2:`expr $number_a - $number_b `, Resta n°2 - n°1:`expr $number_b - $number_a ` " 
#else
#    echo "Debe ingresar 2 números, intente de nuevo"
#    bash $0
#fi;

#b)
#if [ $1 ] && [ $2 ]; then
#    [[ $1 -gt $2 ]] && res=$1 || res=$2
#    echo "El mayor es:"$res
#    echo "Multiplicacion entre ambos:`expr $1 \* $2 `"
#    echo "Suma entre ambos es:`expr $1 + $2 `"
#    echo "Resta n°1 - n°2:`expr $1 - $2 `, Resta n°2 - n°1:`expr $2 - $1 ` " 
#fi;

#c)
#echo [ $# == 3 ] 


echo $number
echo $operation

if [ $# == 3 ]; then
    echo "Rta: `expr $1 \$3 $2 ` " 
else
    echo "Debe ingresar primero 2 numeros cómo parámetro y cómo último la operación a realizar"
    fi;

admitted_operation() {
    return [$3 == '+'] || [$3 == '-'] || [$3 == '*'] || [$3 == '%']
}

admitted_numbers() {
    return [ $2 =~ '^[0-9]+$' ] && [ $1 =~ '^[0-9]+$' ]
}
