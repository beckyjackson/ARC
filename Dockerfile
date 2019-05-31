FROM ubuntu:18.04
MAINTAINER acrinklaw@lji.org

ENV PACKAGES python3-dev python3-pip hmmer ncbi-blast+ git

RUN apt-get update && \
    apt-get install -y ${PACKAGES} && \
    apt-get clean

RUN git clone https://github.com/IEDB/ARC.git /home/ARC

RUN cd /home/ARC && \
	pip3 install -r requirements.txt
