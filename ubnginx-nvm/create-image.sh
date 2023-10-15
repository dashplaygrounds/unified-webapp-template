# Using docker buildx
docker buildx create --name multi-platform-builder
docker buildx use multi-platform-builder
docker buildx ls

# Docker buildx command to make image
docker buildx build \
  --platform linux/amd64 \
  --platform linux/arm64 \
  --file ./Dockerfile\
  --tag docker.io/dmarks629/ubnginx-nvm:18.16.1 \
  --tag docker.io/dmarks629/ubnginx-nvm:latest \
  --push \
  ./

docker pull --platform linux/amd64 docker.io/dmarks629/ubnginx-nvm:18.16.1