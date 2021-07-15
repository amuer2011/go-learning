FROM centos:8

LABEL author="Amuer" version="1.0" email="753507905@qq.com"

# 安装gcc & go
RUN yum install -y gcc
RUN yum install -y go

# config GOROOT
ENV GOROOT /usr/lib/golang
ENV PATH=$PATH:/usr/lib/golang/bin

# config GOPATH
RUN mkdir -p /root/gopath
RUN mkdir -p /root/gopath/src
RUN mkdir -p /root/gopath/pkg
RUN mkdir -p /root/gopath/bin
ENV GOPATH /root/gopath

# copy source files
RUN mkdir -p /root/gopath/src/server
COPY src/* /root/gopath/src/server/