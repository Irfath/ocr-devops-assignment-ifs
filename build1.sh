
#!/bin/bash

# Stop and remove existing containers if running
docker stop gateway model 2>/dev/null
docker rm gateway model 2>/dev/null

# Create a network if it doesn't already exist
docker network create ocr-net 2>/dev/null

# Build Docker images
docker build -t ocr-model -f Dockerfile.model .
docker build -t api-gateway -f Dockerfile.gateway .

# Run containers in the same Docker network
docker run -d --name model --network ocr-net -p 8080:8080 ocr-model
docker run -d --name gateway --network ocr-net -p 8001:8001 api-gateway

