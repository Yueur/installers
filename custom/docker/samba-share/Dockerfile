FROM ubuntu:16.04

ENV SAMBA_CNF_PATH /etc/samba/smb.conf
ENV SAMBA_DEFAULT_SHARE_PATH /var/samba/public_share/
ENV START_FILE /etc/init.d/start_container.sh
ENV DEFAULT_BASH_PATH /bin/bash

# Install samba
RUN apt-get update && \
	apt-get -y install apt-utils && \
	apt-get -y upgrade && \
	apt-get -y install samba && \
	cp /etc/samba/smb.conf /etc/samba/smb.conf.old && \
	mkdir $SAMBA_DEFAULT_SHARE_PATH -p && \
	chmod 777 $SAMBA_DEFAULT_SHARE_PATH && \
	echo '[Commun]' >> $SAMBA_CNF_PATH && \
	echo '    path = /var/samba/public_share/' >> $SAMBA_CNF_PATH && \
	echo '    guest ok = yes' >> $SAMBA_CNF_PATH && \
	echo '    browseable = yes' >> $SAMBA_CNF_PATH && \
	echo '    read only = no' >> $SAMBA_CNF_PATH && \
	echo '    writable = yes' >> $SAMBA_CNF_PATH && \
	echo '    create mask = 0777' >> $SAMBA_CNF_PATH && \
	echo '    directory mask = 0777' >> $SAMBA_CNF_PATH

RUN touch $START_FILE && \
	chmod 755 $START_FILE && \
	echo '/usr/sbin/smbd -D' >> $START_FILE && \
	echo '/usr/sbin/nmbd -D' >> $START_FILE && \
#	echo 'service samba start' >> $START_FILE && \
	echo 'service samba status' >> $START_FILE && \
	echo '$DEFAULT_BASH_PATH' >> $START_FILE

# RUN mkdir /var/run/samba
CMD $START_FILE

EXPOSE 137/udp
EXPOSE 138/udp
EXPOSE 139/tcp
EXPOSE 445/tcp


