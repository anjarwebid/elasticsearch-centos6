#!/bin/bash
# Start Elasticsearch
echo "Starting Elasticsearch..."
/usr/share/elasticsearch/bin/elasticsearch -d -Des.default.path.conf=/etc/elasticsearch
