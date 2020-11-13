#!/bin/bash
if [ -z `docker-compose ps -q $1` ] || [ -z `docker ps -q --no-trunc | grep $(docker-compose ps -q $1)` ]; then
  echo "Not running"
else
  echo "Running."
fi
