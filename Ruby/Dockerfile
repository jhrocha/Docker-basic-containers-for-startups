FROM ubuntu:16.04

USER root

RUN apt-get -y update && apt-get install -y curl && apt-get -y install sudo
RUN curl -sSL https://rvm.io/mpapis.asc | sudo gpg --import -
RUN \curl -L https://get.rvm.io | bash -s stable --rails
RUN apt-get install -y libpq-dev
RUN apt-get install -y tzdata
RUN ln -fs /usr/share/zoneinfo/US/Pacific-New /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
RUN apt-get -y install imagemagick
RUN echo 'source /usr/local/rvm/scripts/rvm' >> /etc/bash.bashrc
EXPOSE 3000

# Create directory for sync
RUN mkdir integrated_folder