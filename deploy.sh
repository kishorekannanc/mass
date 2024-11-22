#!/bin/bash
# Run Docker Container
echo "Running Docker Container..."
docker rm -f react-app || true
docker run -d --name react-app -p 80:80 $registry:$BUILD_NUMBER

