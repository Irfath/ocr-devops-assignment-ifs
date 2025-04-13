#!/bin/bash

# Build images
docker build -t ocr-model -f Dockerfile.model .
docker build -t api-gateway -f Dockerfile.gateway .

# Run containers
docker run -d --name model -p 8080:8080 ocr-model
docker run -d --name gateway -p 8001:8001 api-gateway
