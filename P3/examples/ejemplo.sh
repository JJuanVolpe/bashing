 #! / bin / bash
 
get_password()
# Uso: get_password 
# Pide al usuario una contraseña; Imprime para capturar llamando al código. 
# Devuelve un estado de salida distinto de cero si la entrada estándar no es un terminal, o si 
# salida estándar * es * un terminal, o si el comando "leer" devuelve un 
# estado de salida distinto de cero #.
 {
      if [[ -t 0 ]] && ! [[ -t 1 ]] ; then
    local PASSWORD
    read -r -p 'Password:' -s PASSWORD && echo >&2
    echo "$PASSWORD"
  else
    return 1
  fi
}
 
echo "$(get_password)"