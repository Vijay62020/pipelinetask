#file for deploying application in docker
FROM centos
MAINTAINER vijay62020@gmail.com
RUN yum -y install httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shree.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip shree.zip  && cp -rvf shree/* . && rm -rf shree.zip shree
CMD [ "/usr/sbin/httpd" , "-D" , "FOREGROUND" ]
EXPOSE 80 
