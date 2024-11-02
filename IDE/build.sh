# show build version
docker buildx version

# enable build instancd
docker buildx create --name mybuilder --use

# Create the builder
# --push .  -> 현재 위치에서 Dockerfile을 찾아서 빌드
docker buildx build  --builder multi-builder --platform linux/amd64,linux/arm64  -t dangtong76/cloud-cicd --push .
docker buildx build  --platform linux/amd64,linux/arm64  -t jje0ngyu/cloud-cicd --push .