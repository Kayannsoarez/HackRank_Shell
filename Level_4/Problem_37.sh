#!/bin/bash

entrada=$(cat)
echo "$entrada" | uniq -c | sed 's/^ *//'
