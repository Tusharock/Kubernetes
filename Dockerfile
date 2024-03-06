FROM centos:latest
RUN yum -y install httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip neogym.zip
RUN cp -rvf neogym/* .
RUN -rf neogym neogym.zip
CMD  ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 22