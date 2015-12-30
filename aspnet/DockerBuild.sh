#!/bin/sh

#$1 = IMAGENAME, $2 = CONTAINERNAME

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 IMAGENAME CONTAINERNAME" >&2
  exit 1
fi

docker build -t $1 .
docker run --name=$2 -t -d -p 80:5004 $1
