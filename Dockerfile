FROM debian:bookworm-slim
RUN apt update && \
    apt install sudo && \
    apt install nano -y && \
    apt install apache2 -y
RUN rm /var/www/html/index.html
RUN apt install certbot python3-certbot-apache -y
EXPOSE 80
WORKDIR /var/www/html
