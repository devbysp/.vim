
# Use a base image with a minimal Linux distribution
FROM alpine:latest

# login with root user
USER root

# To be able to download `ca-certificates` with `apk add` command
COPY ZscalerRootCertificate-2048-SHA256.crt /root
RUN cat /root/ZscalerRootCertificate-2048-SHA256.crt >> /etc/ssl/certs/ca-certificates.crt

# Add again root CA with `update-ca-certificates` tool
RUN apk add ca-certificates && rm -rf /var/cache/apk/*
COPY ZscalerRootCertificate-2048-SHA256.crt /usr/local/share/ca-certificates
RUN update-ca-certificates

# Update the package index
RUN apk update

# Install Python 3 and pip
RUN apk add --no-cache python3 py3-pip
RUN apk add --no-cache build-base
# TODO: Install some python pachages which I do not know how to doit yet

# Install Node.js and npm
RUN apk add --no-cache nodejs npm
RUN npm i -g typescript eslint tslint prettier fixjson stdio

# Install Lynx
RUN apk add --no-cache lynx

# Install git
RUN apk add git

WORKDIR /root
VOLUME  /root/development

# Install vim
RUN apk add vim
RUN git clone https://github.com/devbysp/.vim
RUN cp .vim/.vimrc .
RUN echo "set nocursorline" >> .vimrc
RUN vim +PlugInstall +qall

# Building the container image
# docker build -t vim .

# Running vim container with mounting a volume
# docker run -v "C:\Users\magyariz\Home\Personal\vim-docker:/root/vim" -it vim

# Running vim container with mounting current folder
# docker run -v "$(pwd):/root/vim" -it vim

# Runnning vim container without mounting a volume
# docker run -it vim
