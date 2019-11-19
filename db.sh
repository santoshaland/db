#!/bin/bash

if [ $(docker container ls -a -q --filter name=mydb_c) != '' ]; then
    docker container stop mydb_c 
    docker container rm mydb_c
fi

# remove the image if exists
if [ $(docker image ls -q --filter reference=mydb) != '' ]; then
    docker image rm mydb
fi

# build the image
docker build -t mydb .

# start the container
docker container run -itd -p 9999:3306 --name mydb_c mydb