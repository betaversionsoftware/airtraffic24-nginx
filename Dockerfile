FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:certbot/certbot -y
RUN apt-get update

RUN apt-get install nginx python-certbot-nginx -y

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80 443

CMD service nginx start 
