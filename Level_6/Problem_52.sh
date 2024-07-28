#!/bin/bash

entrada=$(cat)

echo "$entrada" | awk '
{
  avg = ($2 + $3 + $4) / 3

  if (avg >= 80) {
    grade = "A"
  } else if (avg >= 60) {
    grade = "B"
  } else if (avg >= 50) {
    grade = "C"
  } else {
    grade = "FAIL"
  }

  printf "%s %d %d %d : %s\n", $1, $2, $3, $4, grade
}
'
