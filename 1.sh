#!/bin/bash


contador=1

while [ $contador -le 20 ]; do
  
    if [ $((contador % 2)) -ne 0 ]; then
        # Si el número es impar, imprímelo
        echo "Impar: $contador"
    else
       
        echo "Par: $contador"
    fi
    
 
    ((contador++))
done
