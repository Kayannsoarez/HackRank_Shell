#!/bin/bash

entrada=$(cat)
echo "$entrada" | grep '\([0-9]\) *\1'
