# unified webapp template

1. Choose from the following Dockerfiles depending on your project architecture
2. Copy nginx.conf to root of project directory
3. Create, tag, and push your project's docker image to registry
4. Test your docker image connection to a chosen database using docker compose deployment

## Creating multiarch builds
```
# Using docker buildx
docker buildx create --name multi-platform-builder
docker buildx use multi-platform-builder
docker buildx ls

# Docker buildx command to make amd64 image
docker buildx build \
  --platform linux/amd64 \
  --platform linux/arm64 \
  --file ./Dockerfile\
  --tag docker.io/dmarks629/project:tag \
  --tag docker.io/dmarks629/project:latest \
  --push \
  ./

docker pull --platform linux/amd64 docker.io/dmarks629/project

# docker pull --platform linux/arm64 docker.io/dmarks629/project
```