FROM ubuntu:latest

 #use a custom Nginx config.
COPY nginx/nginx.conf /etc/nginx/nginx.conf

 #change document root folder. It's relative to your git working copy.
ENV NGINX_DOCROOT_IN_REPO="www"
