#!/bin/bash
<< 'Comment'
20-Realice un script que simule el comportamiento de una estructura de PILA e implemente
las siguientes funciones aplicables sobre una estructura global definida en el script:
push: Recibe un parámetro y lo agrega en la pila,
pop: Saca un elemento de la pila
length: Devuelve la longitud de la pila
print: Imprime todos elementos de la pila
Comment

print(){
    echo ${stack[*]}
}

length(){
    echo ${#stack[*]}
}

push_element(){
        selected=($opt)
        stack=(${stack[@]} ${selected[1]})
}

pop_element(){
    if [[ ${#stack[*]} -ge 1 ]];then
        num=(length -1)
        unset stack[ $num ]
        echo "Pila resultante: " ${stack[*]}
    else
        echo "La Pila no contiene elementos"
    fi
}

stack=( )
opt=""

read -p "Ingrese push y brinde un parametro o pop o print: " opt
while [[  $opt != ""  ]]; do
    case $opt in
    *"push"*)
        push_element
        ;;
    *"pop"*)
        pop_element 
        ;;
    *"print"*) 
        print   
        ;;
    *"length"*) 
        length   
        ;;
    esac
    read -p "Ingrese push y un parametro o pop o print: " opt
done
