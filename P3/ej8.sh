#!bin/bash

<< 'Comment'
 Investigue la sintaxis de las siguientes estructuras de control incluidas en shell scripting:
if ->
ping -c 1 DIRECCION-IP
if [ $? -ne 0 ]; then
    echo "No está en red"
else
    echo "Sí está en red"
fi

if [ $? -ne 0 ]; then
    echo "No está en red"
else
    echo "Sí está en red"
fi
---------------------------------------------------------------------------------------------------

case
while ->

i=0
while [ $i -lt 1000 ]
do
    echo 'Cemento Fresco, no hay letrero más bello… bueno, sólo Alto Voltaje.'
    ((i++))
done

Ojo a la forma de incrementar el contador i, que has utilizado ((i++))


while read line; do 
    echo "$line"
done < file.txt
---------------------------------------------------------------------------------------------------
for ->

for i in {1..1000}
do
    echo "$i.- Yo soy el niño pepino y me siento fresco como una lechuga"
done  

cont=0
for i in *
do
    ((cont++))
    echo "El archivo numero $cont es $i"
done

for ((i=1;i<$1;i++))
do
    if ((i%2))
    then
        echo $i
    fi
done

for i in $(ls);do echo $i;done
---------------------------------------------------------------------------------------------------

select ->
select ITEM in [LIST]
 do
 [COMMANDS]
 done

Comment

#->     https://www.computerhope.com/unix/test.htm
