FROM tomcat:8.0-alpine

LABEL maintainer=”s.bachu@arkoselabs.com”

ADD /target/CiPoc.war  /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]