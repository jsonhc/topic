FROM tomcat:8

ENV MYPATH /usr/local/tomcat

WORKDIR $MYPATH

ADD ./target/blog-.*-SNAPSHOT.war $MYPATH/webapps

ENTRYPOINT ["catalina.sh","run"]

EXPOSE 8080
