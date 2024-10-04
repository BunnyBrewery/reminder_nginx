FROM nginx:alpine

COPY ssl/selfsigned.crt /etc/ssl/certs/selfsigned.crt
COPY ssl/selfsigned.key /etc/ssl/certs/selfsigned.key

RUN chmod 600 /etc/ssl/private/selfsigned.crt
RUN chmod 600 /etc/ssl/private/selfsigned.key

COPY nginx.conf /etc/nginx/nginx.conf
