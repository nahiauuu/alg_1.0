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

elif [ "$total_lineas" -eq "$lineasx2"]; then   # si el archivo tiene exactamnete el doble de líneas, que se muestre entero
        cat "$file"

else  # cuando el file tiene menos del doble de lineas, para que se muestre todo el file también y yasta
<<<<<<< Updated upstream
    cat "$file"

    # PERO QUE SE MUESTRE LA ADVERTENCIA
    echo "..." >&2
    echo "WARNING: File '$file' has only $total_lineas lines (requested $num_lineas lines from each end)" >&2
=======
    cat "$archivo"

    # PERO QUE SE MUESTRE LA ADVERTENCIA
    echo "..." >&2
    echo "WARNING: File '$archivo' has only $total_lineas lines (requested $num_lineas lines from each end)" >&2
>>>>>>> Stashed changes
fi
