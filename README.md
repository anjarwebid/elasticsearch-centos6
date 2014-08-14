## ElasticSearch Dockerfile for Centos 6

Build elasticsearch with centos 6, cluster ready.

### Dependencies

Base Image
centos:centos6


### Installation

	docker pull anjarwebid/elasticsearch-centos6


### Usage

    docker run -d -p 9200:9200 -p 9300:9300 anjarwebid/elasticsearch-centos6
    
### Cluster configuration
This dockerfile include elasticsearch.yml, for create custom cluster please change some values in elasticsearch.yml file.
