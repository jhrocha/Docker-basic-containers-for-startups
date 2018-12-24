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
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get update
RUN apt-get -y install nodejs

#Basic node packages 
RUN npm install -g typescript
RUN npm install -g @angular/cli@6.2.1
RUN ng --help

#Expose node ports
EXPOSE 4200
EXPOSE 8080

# Create App directory
RUN mkdir integrated_folder
