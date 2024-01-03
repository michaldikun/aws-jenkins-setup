#!/bin/sh 
PORT=8080
if [[ $1  =~ ^[0-9]+$ ]]; then 
    PORT="$1"
fi 
node index.js $PORT