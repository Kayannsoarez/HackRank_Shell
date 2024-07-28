#!/bin/bash

entrada=$(cat)
echo "$entrada" |sed 's/\([0-9]\{4\}\)/****/1' | sed 's/\([0-9]\{4\}\)/****/1' | sed 's/\([0-9]\{4\}\)/****/1'
