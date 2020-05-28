FROM centos:latest
MAINTAINER waterlufei

#install jdk and tomcat

ADD jdk-8u121-linux-x64.tar.gz /usr/java/
ADD apache /home/schoolapp/

#jdk enviroment
ENV JAVA_HOME=/usr/java/jdk1.8.0_121
ENV JRE_HOME=/usr/java/jdk1.8.0_121/jre
ENV CLASSPATH=$JAVA_HOME/lib:$JAVA_HOME/jre/lib
ENV PATH=$JAVA_HOME/bin:$PATH

EXPOSE 8080

#tomcat self start
CMD ["/home/schoolapp/apache-tomcat-7.0.76/bin/catalina.sh","run"]
