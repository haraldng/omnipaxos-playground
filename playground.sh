#!/bin/bash

container_names=("coordinator" "s1" "s2" "s3" "s4" "s5")

if [ $# -eq 0 ]; then
  docker compose up --build -d
else
  if [ "$1" = "kill" ]; then
    for name in "${container_names[@]}"; do
      docker kill "$name" 2>/dev/null
    done  
  elif [ "$1" = "attach" ]; then
      docker compose up --build -d
      docker attach coordinator
  else
    echo "Invalid argument: $1. Valid arguments are 'kill' and 'attach'"
  fi
fi
