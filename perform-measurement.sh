#!/bin/bash

# Thien Trinh
# Homework 3
# Problem 1
# 04/24/2019

if [ "$#" -lt 1 ]; then
  echo "Error: $0: No argument given"
  exit 1

fi

wget -qO "file" "$1" -T 5 -t 1
if [ "$?" -ne 0 ]; then
  echo "0"
  rm "file"

else
  wc -c < file
  rm "file"

fi
exit 0
