#!/bin/bash

entrada=$(cat)
echo "$entrada" | uniq -i -c | sed 's/^ *//'
