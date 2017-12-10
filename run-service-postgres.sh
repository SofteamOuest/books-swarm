#!/bin/bash

docker service rm books-postgres

cd ../books-postgres

docker build . -t registry.k8.wildwidewest.xyz/repository/docker-repository/books/postgres

docker service create --detach=true --name books-postgres \
       --network books-network \
       registry.k8.wildwidewest.xyz/repository/docker-repository/books/postgres