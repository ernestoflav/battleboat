FROM nginx
MAINTAINER Ernestoflavie
COPY ./Files /usr/share/nginx/html
RUN apt-get update -y
RUN apt-get install wget -y
EXPOSE 80
