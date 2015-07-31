# sshd
#
# VERSION               0.0.2

FROM rastasheep/ubuntu-sshd:14.04
#MAINTAINER Sven Dowideit <SvenDowideit@docker.com>

RUN locale --all-locales | fgrep zh_CN.utf8 > /dev/null || locale-gen zh_CN.utf8 en_US.UTF-8
RUN echo "Asia/Shanghai" | tee /etc/timezone

# utils
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y vim lftp tree patch make g++ zlib1g-dev git

COPY editor.sh /etc/profile.d/
COPY git-aliases.sh /etc/profile.d/

# jdk
COPY jdk1.8.0_40 /opt/jdk1.8.0_40/
RUN echo "export JAVA_HOME=/opt/jdk1.8.0_40" >> /etc/profile
RUN echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> /etc/profile

#RUN apt-get update && apt-get install -y openjdk-7-jdk
#COPY java.sh /etc/profile.d/

#maven
COPY apache-maven-3.2.3 /opt/apache-maven-3.2.3
RUN echo "export M3_HOME=/opt/apache-maven-3.2.3" >> /etc/profile
RUN echo "export PATH=\$M3_HOME/bin:\$PATH" >> /etc/profile 

RUN chmod +x /etc/profile.d/*.sh


