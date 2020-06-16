FROM centos:latest

RUN yum install sudo -y
RUN yum install wget -y
RUN yum install tar.x86_64 -y
RUN wget https://github.com/prometheus/prometheus/releases/download/v2.19.0/prometheus-2.19.0.linux-amd64.tar.gz
RUN tar -xzf prometheus-2.19.0.linux-amd64.tar.gz
RUN mkdir -p /metrics
CMD ["./prometheus-2.19.0.linux-amd64/prometheus"]
CMD ["--config.file=/prometheus-2.19.0.linux-amd64/prometheus.yml"]

