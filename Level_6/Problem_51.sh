#!/bin/bash

read N
if (( N < 1 || N > 100 )); then
    echo "Erro."
    exit 1
fi

if (( N == 1 )); then
    read num
    echo "$num"
else
    read -a array
    
    unico=0
    
    for num in "${array[@]}"; do
        unico=$((unico ^ num))
    done
    
    echo "$unico"
fi
