FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
#COPY local-certs/nginx.crt /etc/ssl/
#COPY local-certs/nginx.key /etc/ssl/

