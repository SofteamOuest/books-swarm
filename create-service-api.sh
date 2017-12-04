#!/bin/bash

docker service rm books-api

cd ../books-api

docker build . -t registry.k8.wildwidewest.xyz/repository/docker-repository/books/api

docker service create --detach=true --name books-api --env spring.datasource.url=jdbc:postgresql://books-postgres:5432/apibook --network books-network registry.k8.wildwidewest.xyz/repository/docker-repository/books/api