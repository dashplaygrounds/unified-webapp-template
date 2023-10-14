# FRONTEND
FROM docker.io/dmarks629/ubnginx-nvm:18.16.1
SHELL ["/bin/bash", "-c"]
ADD frontend/ /app/frontend
WORKDIR /app/backend
# RUN npm <test> here // jest
RUN ng build
COPY dist/ /usr/share/nginx/html
ADD nginx.conf /etc/nginx/conf.d/default.conf
# BACKEND
ADD backend/ /app/backend
WORKDIR /app/backend
# RUN npm <test> here // jest
EXPOSE 80 8080
ENTRYPOINT ["node", "server.js"]