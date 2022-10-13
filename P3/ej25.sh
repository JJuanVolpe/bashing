#!/bin/bash
 if [ -e "examples" ]; then
        echo "existe examples !!!!"
    else
        echo "Archivo no encontrado"
    fi

for i in $(ls | grep ej)
do
    if [ -d $i ]; then
        echo "Es un directorio: $i"
    fi
    if [ -f $i ]; then
        echo "Es un archivo: $i"
    fi
done
        
<< 'Comment'
    #if [ $responsee = "No" ]; then
        #$(rm -r $1)
    #fi
    if  [ $responsee = "Si" ]; then
        local loc_var=0       # Declared as local variable.
        local position=0
        for i in $(seq ${#array[*]})
        do
            if [ ${array[i]} = $1 ]; then
                loc_var=1
                position=$i
            fi
        done

Comment