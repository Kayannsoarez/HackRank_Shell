#!/bin/bash

entrada=$(cat)

echo "$entrada" | awk '
{
  lines[NR] = $0
}
END {
  for (i = 1; i <= NR; i += 2) {
    if (i + 1 <= NR) {
      print lines[i] ";" lines[i + 1]
    } else {
      print lines[i] ";"
    }
  }
}
'
