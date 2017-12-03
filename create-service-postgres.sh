#!/bin/bash

docker service rm books-postgres

cd ../books-postgres

docker build . -t books/postgres

docker service create --detach=true --name books-postgres --network books-network books/postgres