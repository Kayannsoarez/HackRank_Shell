#!/bin/bash

entrada=$(cat)
echo "$entrada" | sed -e '/the /s/the/this/'
