FROM tomcat:8

ENV MYPATH /usr/local/tomcat

WORKDIR $MYPATH

ADD ./target/blog-1.0-SNAPSHOT.war $MYPATH/webapps

ENTRYPOINT ["catalina.sh","run"]

EXPOSE 8080
