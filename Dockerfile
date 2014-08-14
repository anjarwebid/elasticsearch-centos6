#
# ElasticSearch Dockerfile
#
# https://github.com/anjarwebid/elasticsearch-centos
#

# Pull base image.
FROM centos:centos6
MAINTAINER "Anjar Fiandrianto" <info@anjar.web.id>

#Install basic packages
RUN yum -y install wget which nano

#Install Java
RUN yum -y install java-1.7.0-openjdk-devel.x86_64

#seting environtment
ENV JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk.x86_64
ENV PATH $JAVA_HOME/bin:$PATH

# Install ElasticSearch.
RUN yum -y localinstall https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.1.noarch.rpm

# Define mountable directories.
VOLUME ["/data"]

# Mount elasticsearch.yml config
ADD config/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/usr/share/elasticsearch/bin/elasticsearch -Des.default.path.conf=/etc/elasticsearch"]

# Expose ports.
#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200
EXPOSE 9300

