#!/bin/bash


texto="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et dictum interdum, nisi lorem egestas odio, vitae scelerisque enim ligula venenatis dolor. Maecenas nisl est, ultrices nec congue eget, auctor vitae massa."

total_palabras=0
palabras_consonantes=0


oracion_consonantes=""


IFS=' '  # Establece el separador de palabras a espacio
for palabra in $texto; do
    
    ((total_palabras++))

        primera_letra=$(echo "$palabra" | head -c1 | tr '[:upper:]' '[:lower:]')  # Obtiene la primera letra y la convierte a minúscula
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
