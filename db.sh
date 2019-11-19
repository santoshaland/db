#!/bin/bash

if [ $(sudo  docker container ls -q --filter name=mydb_c)!=''];then
        sudo  docker container rm mydb_c  --force
fi        

if [ $( sudo docker image ls -q --filter reference=mydb)!=''];then
        sudo docker image rm mydb  --force
fi


