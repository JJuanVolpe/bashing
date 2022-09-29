#!/bin/bash
<< 'Comment'
13-Uso de las estructuras de control:
(a) Realizar un script que visualice por pantalla los números del 1 al 100 así como sus
cuadrados.
(b) Crear un script que muestre 3 opciones al usuario: Listar, DondeEstoy y QuienEsta.
Según la opción elegida se le debe mostrar:
Listar: lista el contenido del directoria actual.
DondeEstoy: muestra el directorio donde me encuentro ubicado.
QuienEsta: muestra los usuarios conectados al sistema.
(c) Crear un script que reciba como parámetro el nombre de un archivo e informe si el
mismo existe o no, y en caso afirmativo indique si es un directorio o un archivo. En
caso de que no exista el archivo/directorio cree un directorio con el nombre recibido
como parámetro.

Comment

#a)

#for i in {1..100}
#do
#  echo "N°:$i   y su cuadrado es $(expr $i \* $i)"
#done

#b)

#read -p "Puede ingresar tres opciones: Listar, DondeEstoy y QuienEsta, elija:" option 
#
#case $option in
#    Listar)
#        echo "Directorios $(ls)"
#        ;;
#    DondeEstoy)
#        echo "Estoy en $(pwd)"
#        ;;
#    QuienEsta)
#        echo "$(who |  awk '{print $1}' )" # Tmb. Sirve ->>>   who |  cut -d ' ' -f 1
#        ;;
#    *)
#        echo "Lo siento, no conozco esa opcion"
#        ;;
#esac


#c)

if [[ $# -gt 0 ]]; then
  if [ -d $1 ] || [ -f $1 ]; then
      [[ -d $1 ]] && echo 'Es un directorio!' || echo 'Es un archivo!';
  else
    echo "No existe, pero se creo $(mkdir $1)"
  fi;
fi;
