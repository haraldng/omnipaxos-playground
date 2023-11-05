#!/bin/bash

if [ $# -eq 0 ]; then
  docker compose up --build -d
else
  if [ "$1" = "kill" ]; then
    docker kill $(docker ps -q)
  elif [ "$1" = "attach" ]; then
      docker compose up --build -d
      docker attach coordinator
  else
    echo "Invalid argument: $1. Valid arguments are 'kill' and 'attach'"
  fi
fi
