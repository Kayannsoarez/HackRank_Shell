#!/bin/bash

entrada=$(cat)
echo "$entrada" | paste -sd '\t'
