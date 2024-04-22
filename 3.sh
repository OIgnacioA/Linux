#!/bin/bash

lorem_ipsum="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque nisl est."


total_palabras=0
palabras_consonantes=0
oracion_consonantes=""


IFS=' '

for palabra in $lorem_ipsum; do
    # Incrementa el total de palabras
    ((total_palabras++))
    
   
    primera_letra=$(echo "$palabra" | head -c1 | tr '[:upper:]' '[:lower:]')
    if [[ "$primera_letra" =~ [bcdfghjklmnpqrstvwxyz] ]]; then
      
        ((palabras_consonantes++))
      
        if [ -z "$oracion_consonantes" ]; then
            oracion_consonantes="$palabra"
        else
            oracion_consonantes+="/$palabra"
        fi
    fi
done

echo "Total de palabras: $total_palabras"
echo "Total de palabras que comienzan por consonante: $palabras_consonantes"
echo "Oración con palabras que comienzan por consonante: $oracion_consonantes"


echo "Palabras que contienen la letra 'e':"
echo "$lorem_ipsum" | grep -o "\w*e\w*"

echo "Últimas 5 líneas del texto:"
echo "$lorem_ipsum" | tail -n 5
