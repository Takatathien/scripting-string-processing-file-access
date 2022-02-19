#!/bin/bash

# Thien Trinh
# Homework 2
# Problem 3
# 04/24/2019

GET_BYTES="./perform-measurement.sh"

if [ -e "$1" ]; then
  rm -f "$1"
fi

n=0
while read URL; do
  n="$((n+1))"
  echo "Performing byte-size measurement on $URL"
  bytes=`"$GET_BYTES" "$URL"`
  if [ "$bytes" -ne 0 ]; then
    echo "...successful"
    echo "$n $URL $bytes" >> "$1"
  else
    echo "...failure"
  fi
done < "$2"
exit 0
