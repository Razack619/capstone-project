#!/bin/bash

# Set the name and tag for the Docker image
IMAGE_NAME="react"
IMAGE_TAG="v1"

# Build the Docker image
docker build -t $IMAGE_NAME:$IMAGE_TAG .

# List the Docker images
docker images
