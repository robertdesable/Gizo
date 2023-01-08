#!/bin/bash
a=0
b=1
for (( i=0; i<14; i++ )); do
  echo $a
  c=$((a + b))
  a=$b
  b=$c
done