#!/bin/bash

entrada=$(cat)
ordenada=$(echo "$entrada" | sort -n)
echo "$ordenada"