#!/bin/bash

# En lugar de leer de un archivo, usamos una cadena fija.
lorem_ipsum="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque nisl est."


archivo_temp=$(mktemp)
echo "$lorem_ipsum" > "$archivo_temp"

echo "Permisos del archivo temporal:"
ls -l "$archivo_temp"


chmod 400 "$archivo_temp"
echo "Permisos después de cambiar a solo lectura para el propietario:"
ls -l "$archivo_temp"

sleep 10 &


echo "Trabajos en segundo plano:"
jobs


pkill -f "sleep 10"


echo "Procesos activos:"
ps


echo "Usando xargs para ejecutar un comando:"
cat "$archivo_temp" | xargs -n 1 echo "Palabra:"


rm "$archivo_temp"
