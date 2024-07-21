#!/bin/bash

round() {
    printf "%.${2}f" "${1}"
}

read expression

result=$(echo "scale=4; $expression" | bc -l)
rounded_result=$(round $result 3)

echo $rounded_result
