FROM centos:7
RUN yum install -y epel-release && yum install -y git vim iptables docker net-utils device-mapper-libs.x86_64
ADD entrypoint.sh /opt/
ENTRYPOINT /opt/entrypoint.sh
