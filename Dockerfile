FROM ubuntu:18.04

RUN cd /etc/apt && \
  sed -i 's/archive.ubuntu.com/ftp.kaist.ac.kr/g' sources.list

RUN apt-get update && \
  apt-get install -y tzdata

RUN echo "Asia/Seoul" > /etc/timezone
ENV TZ Asia/Seoul

RUN apt-get install -y jekyll awscli jq
CMD ["/bin/bash"]

