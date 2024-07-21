#!/bin/bash

for (( i=1; i<=100; i++ )); do
    read palavra
    echo "$palavra" | cut -d' ' -f 4
done
