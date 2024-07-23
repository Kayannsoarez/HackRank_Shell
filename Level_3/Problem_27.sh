#!/bin/bash

expression=$(cat)
echo "$expression" | tr -d 'a-z'
