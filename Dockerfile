FROM tomcat:9.0-jdk11
RUN rm -rf /usr/local/tomcat/webapps/*
#COPY dist/EmailListApp.war /usr/local/tomcat/webapps/ROOT.war
# Sửa đường dẫn từ 'dist' thành 'target'
COPY target/mavenproject1_emailList-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080