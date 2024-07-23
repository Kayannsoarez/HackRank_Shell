#!/bin/bash

entrada=$(cat)
ordenada=$(echo "$entrada" | sort -k2 -n -r -t$'|')
echo "$ordenada"
