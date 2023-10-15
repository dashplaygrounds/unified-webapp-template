FROM ubuntu/nginx
SHELL ["/bin/bash", "-c"]
RUN apt update && apt install -y curl wget nano iputils-ping
# Install NVM
RUN mkdir /usr/local/nvm
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 18.16.1
RUN <<EOF
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
    . $NVM_DIR/nvm.sh \
    nvm install $NODE_VERSION \
    nvm alias default $NODE_VERSION \
    nvm use default
    node -v; npm -v
EOF
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH