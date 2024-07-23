#!/bin/bash

entrada=$(cat)
ordenada=$(echo "$entrada" | sort -n -r)
echo "$ordenada"
