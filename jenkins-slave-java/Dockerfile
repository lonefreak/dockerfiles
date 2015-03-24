FROM centos:6.6
MAINTAINER Fabricio Leotti <fabricio.lotti@gmail.com>

ENV JAVA_HOME /opt/jdk1.7.0_71

RUN yum install -y which wget tar build-essential git && yum clean all
RUN wget http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz \
	&& tar xzf apache-maven-3.0.5-bin.tar.gz -C /usr/local \
	&& cd /usr/local \ 
	&& ln -s apache-maven-3.0.5 maven
RUN cd /opt/ \ 
	&& wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-linux-x64.tar.gz" \
	&& tar xzf jdk-7u71-linux-x64.tar.gz \
	&& cd /opt/jdk1.7.0_71/ \
	&& alternatives --install /usr/bin/java java /opt/jdk1.7.0_71/bin/java 2 \
	&& alternatives --install /usr/bin/jar jar /opt/jdk1.7.0_71/bin/jar 2 \
	&& alternatives --install /usr/bin/javac javac /opt/jdk1.7.0_71/bin/javac 2 \
	&& alternatives --set jar /opt/jdk1.7.0_71/bin/jar \ 
	&& alternatives --set javac /opt/jdk1.7.0_71/bin/javac
RUN useradd -u 5002 jenkins
USER jenkins