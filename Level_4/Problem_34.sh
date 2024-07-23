#!/bin/bash

entrada=$(cat)
ordenada=$(echo "$entrada" | sort -k2 -n -t$'\t')
echo "$ordenada"
