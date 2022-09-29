<< 'Comment'
19. Escribir un Programa de “Menu de Comandos Amigable con el Usuario” llamado menu, el
cual, al ser invocado, mostrará un menú con la selección para cada uno de los scripts creados
en esta práctica. Las instrucciones de como proceder deben mostrarse junto con el menú.
El menú deberá iniciarse y permanecer activo hasta que se seleccione Salir. Por ejemplo:
MENU DE COMANDOS
03. Ejercicio 3
12. Evaluar Expresiones
13. Probar estructuras de control
...
Ingrese la opción a ejecutar: 03

Comment

echo "Buenas, Acabas de ejecutar el script menú!. Ingresa salir para finalizar el ciclo del script"






echo "MENU DE COMANDOS:"
for i in $(ls -art | grep ej);
do
    echo "Ejercicio $i Permite $i"
done
read -p "Ingrese el ejercicio a ejecutar" ej_name
bash $ej_name


