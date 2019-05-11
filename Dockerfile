# Version: 0.0.1
FROM ubuntu:latest

# Docker image with SABnzbd (git version) running on Python3

MAINTAINER Sander "superkoning@caiway.net"

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install sabnzbdplus git par2 rar python3-setuptools python3-pip -y

RUN cd / && git clone https://github.com/sabnzbd/sabnzbd.git && \
	cd sabnzbd/ && \
	git checkout py3 && \
	pip3 install -r requirements.txt -U && \
	tools/make_mo.py 

CMD env LANG=en_US.UTF-8 sabnzbd/SABnzbd.py -b0 --server 0.0.0.0:8080

RUN echo 'Hi, I am in your container'


# ports and volumes
EXPOSE 8080 9090
VOLUME /config /downloads /incomplete-downloads

