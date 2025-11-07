#!/bin/bash

#### VARIABLES ####

file="$1"
num_lineas="${2:-3}"  # si no se proporciona el segundo argumento, usar 3 por defecto

total_lineas=$(wc -l < "$file") # nº de lineas en total del file

lineasx2=$(( num_lineas * 2 )) # variable con el doble de nº de lineas de las solicitadas


#### FUNCIÓN ####

# si el archivo tiene más líneas que el doble solicitado, mostrar con "..."
if [ "$total_lineas" -gt "$lineasx2" ]; then

    head -n "$num_lineas" "$file" # mostrar las primeras n líneas

    echo "..."

    tail -n "$num_lineas" "$file" # mostrar las últimas n líneas

else   # por si el archivo es más pequeño, para que se muestre entero y yasta
        cat "$file"
fi
