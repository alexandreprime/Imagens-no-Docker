FROM debian:latest AS debian-base
RUN apt-get update && apt-get install -y \
curl \
wget \

RUN apt-get update && apt-get install -y \ curl \ wget \ vim \ git \ && apt-get clean \ && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD ["/bin/bash"]
FROM httpd:lateste AS apache-base
COPY apache-html/ /usr/local/apache2/htdocs/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
