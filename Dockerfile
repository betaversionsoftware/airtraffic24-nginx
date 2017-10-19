FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:certbot/certbot -y
RUN apt-get update

RUN apt-get install nginx python-certbot-nginx -y

COPY ./sites /etc/nginx/sites-available

RUN ln -s /etc/nginx/sites-available/api.airtraffic24.com /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/mq.airtraffic24.com /etc/nginx/sites-enabled/

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80 443

CMD service nginx start 
