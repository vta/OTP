#!/bin/bash
#
# @author Gordon Hackett
# @date 2017-10-27
# @package Ubuntu_MongoDB_Apache_NodeJS_Python_Java - ManPJ
############################
#
cd ~
sudo add-apt-repository ppa:webupd8team/java
#
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get update
#
sudo apt-get install \
build-essential \
openssl \
libreadline6 \
libreadline6-dev \
zlib1g \
zlib1g-dev \
libssl-dev \
libpcre3-dev \
autoconf \
libc6-dev \
ncurses-dev \
libreadline-dev \
automake \
libtool \
bison \
apache2 \
apache2-utils \
apache2-dev \
libapache2-mod-wsgi \
libpcre3-dev \
mongodb \
mongodb-clients \
mongodb-server \
python-markdown \
python-markdown-doc \
libxml2-dev \
libxslt1-dev \
xml-core \
xml-security-c-utils \
xml2 \
xmldiff \
xmlformat-doc \
xmlrpc-api-utils \
python-software-properties \
perl \
perl-base \
perl-debug \
perl-depends \
perl-doc \
perl-doc-html \
perl-modules \
liburi-perl \
libuuid-perl \
libwww-perl \
libwww-robotrules-perl \
geoip-bin \
geoip-database \
libapache2-mod-security2 \
oracle-java8-installer \
oracle-java8-set-default \
oracle-java8-unlimited-jce-policy \
tcpdump \
chkrootkit \
rkhunter \
nodejs
#
sudo update-grub
sudo updatedb
#
sudo apt-get install supervisor fail2ban maven
sudo apt-get autoclean
sudo apt-get autoremove
sudo update
#
sudo swapon -s
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon -s
cat /proc/sys/vm/swappiness
sudo printf "/swapfile\tnone\tswap\tsw\t0\t0\n" >> /etc/fstab
sudo vim /etc/fstab
#
free -m
df -h

