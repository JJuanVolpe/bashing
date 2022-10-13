<< 'Comment'
21. Dentro del mismo script y utilizando las funciones implementadas:
Agregue 10 elementos a la pila
Saque 3 de ellos
Imprima la longitud de la cola
Luego imprima la totalidad de los elementos que en ella se encuentran.
    
Comment


push_element () {
   stack+=${myarray[1]}
}

pop_element () {
   $1?
   stack+=${myarray[1]}
}



echo "Buenas, Acabas de ejecutar el script menú!. Ingresa salir para finalizar el ciclo del script"

stack=()
opt=""
read -p "Ingrese push y brinde un parametro o pop para desapilar de la pila " opt
while [[ -n $opt ]]; do
    echo "La longitud: ${#stack[*]}"
    case $opt in
    *"push"*)
        myarray=($opt)
        echo "Acaba de insertar: ${myarray[-1]}"
        ;;
    *"pop"*)
        if [[ ${#stack[@]} -gt 0 ]];then
            echo "Acaba de desapilar el elemento: ${myarray[-1]}"
            unset ${stack[${#stack[*]}]}
        else
            echo "La Pila no contiene elementos"
        fi
        ;;
    esac
    read -p "Ingrese push y un espacio para apilar  lo pasado como parametro o pop para desapilar " opt;
done


