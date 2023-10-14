FROM ubuntu/nginx
SHELL ["/bin/bash", "-c"]
RUN apt update && apt install -y curl wget nano iputils-ping
# Install NVM
RUN <<EOF
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm --version
nvm install 18.16.1
nvm use 18.16.1
node -v; npm -v
EOF