FROM ubuntu:18.04

ENV GIT_SERVER_ROOT /srv/git/
ENV GIT_SERVER_SSH ~/.ssh/

USER root
# Install git
RUN apt-get update && \
	apt-get -y install git && \
	apt-get -y install openssh-server && \
	adduser --system \
		--shell /bin/bash \
		--disabled-password \
		--group \
		--home  $GIT_SERVER_ROOT \
		git && \
	su git -c "ssh-keygen -f ~/.ssh/id_rsa -N '' && cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys"

EXPOSE 22

RUN mkdir /var/run/sshd
CMD ["/usr/sbin/sshd", "-D"]

