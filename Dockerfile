FROM hshar/webapp
WORKDIR /
COPY website /var/www/html
RUN apt-get update
RUN apt-get install apache -y
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80