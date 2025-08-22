# Sử dụng Tomcat 9 với JDK 11, phiên bản này tương thích và ổn định.
FROM tomcat:9.0-jdk11-openjdk

# Đặt thư mục làm việc mặc định trong container là thư mục webapps của Tomcat.
WORKDIR /usr/local/tomcat/webapps/

# Sao chép file .war từ thư mục `target` của dự án
COPY target/mavenproject1_emailList-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080.
EXPOSE 8080

# Chạy Tomcat khi container khởi động.
CMD ["catalina.sh", "run"]
