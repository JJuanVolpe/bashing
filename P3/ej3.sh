#!/bin/bash

<< 'Comment'

    3. Crear dentro del directorio personal del usuario logueado un directorio llamado practica-
    shell-script y dentro de él un archivo llamado mostrar.sh cuyo contenido sea el siguiente:
    
        #!/bin/bash
        #Contenido en ejemplo_ej3

    (a) Asignar al archivo creado los permisos necesarios de manera que pueda ejecutarlo
        chmod +x ej3.sh
        Lo que hice: chmod +x ej{1..10}.sh
    (b) Ejecutar el archivo creado de la siguiente manera: ./mostrar
    (c) ¿Qué resultado visualiza? 
        Se ejecuta  reemplazando ls por la salida del comando ls.
    (d) Las backquotes (`) entre el comando whoami ilustran el uso de la sustitución de co-
    mandos. ¿Qué significa esto?

    (e) Realizar modificaciones al script anteriormente creado de manera de poder mostrar
    distintos resultados (cuál es su directorio personal, el contenido de un directorio en
    particular, el espacio libre en disco, etc.). Pida que se introduzcan por teclado (entrada
    estándar) otros datos.

Comment


# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y mañana ya no me acuerdo de lo que quise hacer


#echo "Introduzca su nombre y apellido:"
#read nombre apellido
#echo "Fecha y hora actual:"
#date
#echo "Su apellido y nombre es:"
#echo "$apellido $nombre"
#echo "Su usuario es: `whoami`"
#echo "Su directorio actual es:`pwd`" 

read -p "A continuacion ingrese el directorio del cual desea conocer los archivos: " dir_name

route=`find $HOME -name $dir_name`
echo $route

if [ $route ]; then        #También podemos anteponer a la variable ! -z 
    echo "Archivos contenidos en $dir_name ="
    echo `ls $route`
fi
#echo "Para ver el total de espacio libre en disco utilizamos: `df -h`"

