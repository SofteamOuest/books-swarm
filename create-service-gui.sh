#!/bin/bash

docker service rm books-gui

cd ../books-gui

docker build . -t books/gui

docker service create --detach=true --name books-gui --network books-network --publish 80:80 books/gui