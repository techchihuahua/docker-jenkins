FROM jenkins/jenkins:lts-alpine
LABEL maintainer='tech_chihuahua@tuta.io'
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY conf/security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy
COPY conf/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
