#!/bin/bash

# Buscar todos los archivos con extensión .fasta o .fa en todo el sistema

find ~/ -type f -name "*.fa*" > allfasta.txt

echo "Se han encontrado los siguientes $(wc -l < allfasta.txt) archivos:"
cat allfasta.txt
