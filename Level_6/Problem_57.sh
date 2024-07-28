#!/bin/bash

entrada=$(cat)
echo "$entrada" | grep -Ewi "the|that|then|those"
