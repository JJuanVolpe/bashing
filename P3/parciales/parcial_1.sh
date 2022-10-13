#!/bin/bash
<< 'Comment'
#Resuelvo enunciado en foto jpeg de ej1.jpeg
#Basicamente verifico si hay parámetros y, si existen, veo que solo tengan mayúscula al comienzo, y sea un nombre correcto
# 
Comment

echo "##################################################"
if [[ "$#" != "0" ]]; then
    counter=0
    for i in $*; do
        if [[ "${i}" =~ ^[A-Z] ]] && [[ ! "${i:(1):(${#i})}" =~ [A-Z] ]] && [[ ! "$i" =~ [0-9] ]]; then 
            echo "$i"                                                                                
            echo "OK" 
        else
            echo "$i no respeta el formato (Primera letra en mayúscula y el resto en minúsculas)"
            counter=$(expr $counter + 1)
        fi
    done
    echo "Muchas gracias. ud ingresó ${counter} dato(s) inválido(s)"
fi
