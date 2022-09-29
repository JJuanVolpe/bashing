#!bin/bash

<< 'Comment'
9.¿Qué acciones realizan las sentencias break y continue dentro de un bucle? ¿Qué paráme-
tros reciben?
Bibliografia: https://linuxize.com/post/bash-break-continue/
Comment


i=0

while [[ $i -lt 5 ]]; do
  ((i++))
  if [[ "$i" == '2' ]]; then
    continue
  fi
  echo "Number: $i"
done

echo 'All Done!'

i=0

while [[ $i -lt 5 ]]; do
  ((i++))
  if [[ "$i" == '2' ]]; then
    break
  fi
  echo "Number: $i"
done

echo 'All Done!'

