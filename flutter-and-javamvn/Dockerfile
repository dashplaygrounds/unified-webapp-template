# FRONTEND
FROM docker.io/dmarks629/flutter:3.14 as builder
SHELL ["/bin/bash", "-c"]
WORKDIR /app
ADD frontend/ /app
# RUN flutter <test test/unit_test/> here
RUN flutter build web
RUN sed -i 's/base href="\/"/base href="'""'"/g' ./build/web/index.html
FROM docker.io/dmarks629/ubnginx-javamvn:11
COPY --from=builder /app/build/web /usr/share/nginx/html
ADD nginx.conf /etc/nginx/conf.d/default.conf
# BACKEND
ADD backend/ /app
WORKDIR /app
# RUN mvn <test> here
RUN mvn clean package
RUN mv target/app.war ROOT.war
EXPOSE 80 8080
ENTRYPOINT ["java", "-jar", "ROOT.war"]