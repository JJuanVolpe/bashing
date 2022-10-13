<< 'Comment'
29. Implemente un script que agregue a un arreglo todos los archivos del directorio /home cuya
terminación sea .doc. Adicionalmente, implemente las siguientes funciones que le permitan
acceder a la estructura creada:
verArchivo <nombre_de_archivo>: Imprime el archivo en pantalla si el mismo se
encuentra en el arreglo. Caso contrario imprime el mensaje de error “Archivo no en-
contrado” y devuelve como valor de retorno 5
cantidadArchivos: Imprime la cantidad de archivos del /home con terminación .doc
borrarArchivo <nombre_de_archivo>: Consulta al usuario si quiere eliminar el archi-
vo lógicamente. Si el usuario responde Si, elimina el elemento solo del arreglo. Si el
usuario responde No, elimina el archivo del arreglo y también del FileSystem. Debe
validar que el archivo exista en el arreglo. En caso de no existir, imprime el mensaje
de error “Archivo no encontrado” y devuelve como valor de retorno 10

Comment

array=() # Vector

verArchivo(){
    local loc_var=0       # Declared as local variable.
    for i in ${array}
    do
        if [ $1 = $i ]; then
            loc_var=1
        fi
    done
    if [ $loc_var -eq 1 ]; then
        echo $1
    else
        echo "Archivo no encontrado"
    fi
    exit 5
} 

cantidadArchivos(){
    echo "Cantidad de archivos con extension .doc: ${#array[*]}"
}

borrarArchivo(){
    read -p "Desea eliminar el archivo $1 ?" responsee
    if [ $loc_var -eq 1 ]; then
        echo $1
    else
        echo "Archivo no encontrado"
    fi
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
        if [ $loc_var -eq 1 ]; then
            unset array[$position]
        else
            echo "Archivo no encontrado"
        fi
    fi
    exit 5
}
