#!/bin/bash

for (( i=1; i<=100; i++ )); do
    read palavra
    echo "$palavra" | cut -c 3
done
