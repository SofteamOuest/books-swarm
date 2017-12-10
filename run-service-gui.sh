#!/bin/bash

docker service rm books-gui

cd ../books-gui

docker build . -t registry.k8.wildwidewest.xyz/repository/docker-repository/books/gui

docker service create --detach=true --name books-gui \
       --env books_api_url=books-api \
       --network books-network \
       --publish 80:80 \
       registry.k8.wildwidewest.xyz/repository/docker-repository/books/gui