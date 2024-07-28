#!/bin/bash

entrada=$(cat)
echo "$entrada" | awk '{if($4 =="") print("Not all scores are available for"), $1}'
