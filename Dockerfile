FROM hshar/webapp
WORKDIR /
COPY . /var/www/html
RUN apt-get update
RUN apt-get install apache2 -y
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80