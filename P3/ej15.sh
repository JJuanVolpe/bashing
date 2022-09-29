#!/bin/bash
<< 'Comment'
15. Comando cut. El comando cut nos permite procesar la líneas de la entrada que reciba
(archivo, entrada estándar, resultado de otro comando, etc) y cortar columnas o campos,
siendo posible indicar cual es el delimitador de las mismas.
 Investigue los parámetros que puede recibir este comando y cite ejemplos de uso.

Interasting:
The data in the /etc/passwd file isn't aligned in the same way as the data in the who command output. 
Thus, you cannot extract all the users on the system by relying on the character number.
However, the fields in the /etc/passwd file are delimited by a colon.
 Hence, count the number of colons to extract the same fields. For example:

cut -d: -f1,6 /etc/passwd
Comment

#   https://phoenixnap.com/kb/linux-cut
