#!  /bin/sh

echo "
#########################################
DOCKER JENKINS SLAVE JAVA/MAVEN CONTAINER

This container contains the following versions:
Java: $(java -version)
Maven: $(mvn -v)

Run this container using the job container-as-slave
http://jenkins/job/container-as-slave/
#########################################"
exit 0;