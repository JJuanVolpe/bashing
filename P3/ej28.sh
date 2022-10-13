#!/bin/bash

echo "Los parámetros son: $* , y el PID del partido"
echo $@

for i in $*;
do
    echo "Elemento : $i"
done

