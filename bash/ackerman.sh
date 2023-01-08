#!/bin/bash

ackerman() {
  if [[ $1 -eq 0 ]]; then
    echo $2
  elif [[ $2 -eq 0 ]]; then
    ackerman $(($1 -1)) 1
  else
    ackerman $(($1 -1)) $(ackerman $1 $(($2 -1)))
  fi
}

echo $(ackerman 1 2)