#!/bin/bash

entrada=$(cat)
echo "$entrada" | paste -d ';' -s
