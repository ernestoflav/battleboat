FROM FROM nginx
MAINTAINER Ernestoflavie
COPY ./Files /usr/share/nginx/html
RUN sudo yum update -y
RUN sudo yum install wget -y
EXPOSE 80
