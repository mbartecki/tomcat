FROM tomcat:8.5-jre8

ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD create_admin.sh /create_admin.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

RUN rm -rf /usr/local/tomcat/webapps/ROOT

CMD ["catalina.sh", "run"]
