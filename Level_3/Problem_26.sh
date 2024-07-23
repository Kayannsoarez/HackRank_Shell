#!/bin/bash

expression=$(cat)
echo "$expression" | tr '()' '[]'
