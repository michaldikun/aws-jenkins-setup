#!/bin/sh 

docker build -t cowsay:1 .
docker run -e PORT=3001 -h cowsay --network cowsay cowsay:1
sleep 5
curl http://cowsay:3001
