#!/bin/bash

entrada=$(cat)
ordenada=$(echo "$entrada" | sort -r)
echo "$ordenada"
