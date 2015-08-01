# sshd
#
# VERSION               0.0.2

FROM rastasheep/ubuntu-sshd:14.04
#MAINTAINER Sven Dowideit <SvenDowideit@docker.com>

RUN locale --all-locales | fgrep zh_CN.utf8 > /dev/null || locale-gen zh_CN.utf8 en_US.UTF-8
RUN echo "Asia/Shanghai" | tee /etc/timezone

# utils
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y vim lftp curl wget tree patch git subversion

COPY editor.sh /etc/profile.d/
COPY git-aliases.sh /etc/profile.d/

RUN chmod +x /etc/profile.d/*.sh


