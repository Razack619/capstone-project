#!/bin/bash

# Set the name and version of the image
IMAGE_NAME=react
IMAGE_VERSION=v1

# Tag the image with the Docker Hub repository name and version
docker tag $IMAGE_NAME:$IMAGE_VERSION razack619/prod:$IMAGE_VERSION
docker tag $IMAGE_NAME:$IMAGE_VERSION razack619/dev:$IMAGE_VERSION

# Push the image to Docker Hub
docker push razack619/prod:$IMAGE_VERSION
docker push razack619/dev:$IMAGE_VERSION

