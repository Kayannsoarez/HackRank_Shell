#!/bin/bash

read x
read y

if [ "$y" -eq 0 ]; then
    echo "Erro: Divisao por Zero."
    exit 1
fi

sum=$((x + y))
dif=$((x - y))
prod=$((x * y))
quot=$((x / y))

echo "$sum"
echo "$dif"
echo "$prod"
echo "$quot"
