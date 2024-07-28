#!/bin/bash

entrada=$(cat)
echo "$entrada" | sed -e 's/thy/your/ig'
