FROM ubuntu
RUN apt-get update
RUN apt-get install net-tools
RUN apt-get httpd
EXPOSE 80
CMD httpd -D FOREGROUND
