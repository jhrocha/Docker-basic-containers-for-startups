FROM ubuntu:16.04
USER root

# Initial Scripts
RUN apt-get -y update && apt-get install -y curl
RUN apt-get -y install git build-essential software-properties-common python-software-properties
RUN apt-get update
RUN apt-get -y install sudo

#Install NGINX
RUN apt-get install -y nginx

#Install NodeJS V6
RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN apt-get update
RUN apt-get -y install nodejs

#Basic node packages 
RUN npm install -g typescript
RUN npm install -g @angular/cli
RUN ng --help

#Process manager for node applications
RUN npm install pm2@latest -g

#Expose node ports
EXPOSE 4200

# Create App directory
RUN mkdir integrated_folder