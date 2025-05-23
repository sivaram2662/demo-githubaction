# ARG TAG=latest
# FROM ubuntu:${TAG}
# RUN apt update \
#    && apt install -y apache2 zip \
#    && apt install -y apache2-utils \
#    && apt clean
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/grandcoffee.zip /tmp/
# RUN cd /tmp \
#     && unzip /tmp/grandcoffee.zip \
#     && cp -r /tmp/html/* /var/www/html/
# # COPY grandcoffee.zip /tmp/
# EXPOSE 80
# CMD ["apache2ctl", "-D", "FOREGROUND"]

# --------------------------------------------------
FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY index.html /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]