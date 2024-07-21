#!/bin/bash

read n
soma=0

for i in $(seq 1 $n); do
    read num
    soma=$(( $soma + $num ))
done

printf "%.3f\n" `echo "$soma / $n" | bc -l`
