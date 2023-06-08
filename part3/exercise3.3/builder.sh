#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Wrong number of arguments"
    echo "Usage: ./builder.sh git-repo dockerhub-name"
    exit 1
fi
rm -rf build-dir

# get git repo
git clone "https://github.com/$1" build-dir
if [ "$?" -ne 0 ]; then
    echo "Error: Can't clone git repo."
    exit 1
fi

#build docker image
docker build -t test1app build-dir
if [ "$?" -ne 0 ]; then
    echo "Error: Can't build Docker image."
    exit 1
fi

#upload to docker hub
docker login
if [ "$?" -ne 0 ]; then
    echo "Error: Login to Docker hub failed."
    exit 1
fi
docker tag test1app $2
docker push $2
if [ "$?" -ne 0 ]; then
    echo "Error: Can't upload image to Docker hub."
    exit 1
fi

exit 0