FROM jenkins/jenkins:2.277.4-lts-jdk11
USER root
#RUN cat /etc/resolv.conf
RUN echo 'Acquire::http::Proxy "https://172.17.0.1:8123";' > /etc/apt/apt.conf
#RUN cat /etc/apt/apt.conf
RUN apt-get update && apt-get install -y apt-transport-https \
       ca-certificates curl gnupg2 \
       software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) stable"
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.24.6 docker-workflow:1.26"
