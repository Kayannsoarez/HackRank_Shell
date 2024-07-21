#!/bin/bash

for (( i=1; i<=100; i++ )); do
    read palavra
    echo "$palavra" | cut -d$'\t' -f 1-3 
done
