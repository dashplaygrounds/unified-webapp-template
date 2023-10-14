FROM ubuntu/nginx
SHELL ["/bin/bash", "-c"]
RUN apt update && apt install -y curl wget nano iputils-ping
RUN <<EOF
apt remove openjdk-11-jdk openjdk-11-jre --purge
apt install -y openjdk-11-jdk-headless maven
java -version; mvn -version
EOF