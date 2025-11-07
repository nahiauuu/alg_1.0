#!/bin/bash

#### VARIABLES ####

file=$1

num_lines=$(wc -l < "$file")  # contar las lineas del archivo

#### FUNCIONES ####

# visualizar el nombre del archivo y el número de líneas
echo "Nombre del archivo: $file"

if [ "$num_lines" -eq 0 ]; then
    echo "Número de lineas: 0"
elif [ "$num_lines" -eq 1 ]; then
    echo "Número de lineas: 1"
else
    echo "Número de lineas: $num_lines"
fi
