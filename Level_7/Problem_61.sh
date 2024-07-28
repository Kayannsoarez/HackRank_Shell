#!/bin/bash

entrada=$(cat)
echo "$entrada" | sed 's/thy/{&}/ig'
