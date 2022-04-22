FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
# Install NGINX to test.
RUN apt-get install nginx -y
# Expose port 80
EXPOSE 80
#use a custom Nginx config.
COPY /nginx/nginx.conf /etc/nginx/nginx.conf
#change document root folder. It's relative to your git working copy.
ENV NGINX_DOCROOT_IN_REPO="www"
# Last is the actual command to start up NGINX within our Container
CMD ["nginx", "-g", "daemon off;"]