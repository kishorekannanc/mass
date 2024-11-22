#!/bin/bash
# Build Docker Image
echo "Building Docker Image..."
docker build -t $registry:$BUILD_NUMBER .


