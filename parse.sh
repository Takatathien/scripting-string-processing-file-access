#!/bin/bash

# Thien Trinh
# Homework 3
# Problem 2
# 04/24/2019

if [ "$#" -lt 2 ]; then
  echo "Error: $0: Fewer than 2 arguments"
  exit 1

elif [ ! -e "$2" ]; then
  echo "Error: $0: Input file does not exist"
  exit 1

fi

grep -Eoi '<strong><a [^>]+>' "$2" | 
grep -Eo 'href="[^\"]+"' | 
grep -Eo '(http|https)://[^/"]+' > "$1"

exit 0
