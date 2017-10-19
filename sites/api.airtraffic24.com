server {
  listen 80;

  server_name api.airtraffic24.com;

  location / {
    proxy_pass http://api:4567;
  }
}
