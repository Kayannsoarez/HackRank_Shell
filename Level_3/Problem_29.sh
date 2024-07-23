#!/bin/bash

entrada=$(cat)
ordenada=$(echo "$entrada" | sort)
echo "$ordenada"
