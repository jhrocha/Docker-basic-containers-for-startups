FROM ruby:2.5.0

LABEL REPOSITORY="Ruby-App-2.5.0"

RUN apt-get -y update && apt-get install -y curl && apt-get -y install sudo && apt-get install -y git
RUN gem install rails 
RUN gem install bundler
RUN gem install puma
RUN apt-get install -y build-essential 
RUN apt-get install -y libpq-dev
RUN apt-get install -y tzdata
RUN ln -fs /usr/share/zoneinfo/US/Pacific-New /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
RUN apt-get -y install imagemagick

ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

ENV RAILS_ENV production 
ENV RACK_ENV production

EXPOSE 8080
EXPOSE 80
EXPOSE 3000
