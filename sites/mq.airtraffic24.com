server {
  listen 80;

  server_name mq.airtraffic24.com;

  location / {
    proxy_pass http://rabbitmq:15672;
  }
}
