<< 'Comment'

27. Realice un script que implemente a través de la utilización de funciones las operaciones
básicas sobre arreglos:
inicializar: Crea un arreglo llamado array vacío
agregar_elem <parametro1>: Agrega al final del arreglo el parámetro recibido
eliminar_elem <parametro1>: Elimina del arreglo el elemento que se encuentra en la
posición recibida como parámetro. Debe validar que se reciba una posición válida
longitud: Imprime la longitud del arreglo en pantalla
imprimir: Imprime todos los elementos del arreglo en pantalla
inicializar_Con_Valores <parametro1><parametro2>: Crea un arreglo con longitud
<parametro1>y en todas las posiciones asigna el valor <parametro2>

Comment



inicializar(){
    array=()
}

agregar_elem(){
# <parametro1>: Agrega al final del arreglo el parámetro recibido
    array+=($1)
}

eliminar_elem(){
#<parametro1>: Elimina del arreglo el elemento que se encuentra en la posicion recibida como parametro
if [ $1 -lt ${#array[@]} ]; then
    unset array{}[$1]
fi
} 

imprimir(){
 #Imprime todos los elementos del arreglo en pantalla
    for i in array; do
        echo $i
    done
} 
inicializar_Con_Valores(){
  array=($2)
  for i in {1..$1}; do
     array+=($2)    
    done  
} <parametro1><parametro2>: Crea un arreglo con longitud
<parametro1>y en todas las posiciones asigna el valor <parametro2>




  array=($2)
  for i in {1..$1}; do
     array+=($2)   
     echo $array 
done  

