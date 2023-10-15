# Using docker buildx
docker buildx create --name multi-platform-builder
docker buildx use multi-platform-builder
docker buildx ls

# Docker buildx command to make image
docker buildx build \
  --platform linux/amd64 \
  --platform linux/arm64 \
  --file ./Dockerfile\
  --tag docker.io/dmarks629/ubnginx-javamvn:11 \
  --tag docker.io/dmarks629/ubnginx-javamvn:latest \
  --push \
  ./

docker pull --platform linux/amd64 docker.io/dmarks629/ubnginx-javamvn:11