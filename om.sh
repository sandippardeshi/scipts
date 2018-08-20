#!/bin/bash
yum install java
java -version
rpm --import http://packages.elastic.co/GPG-KEY-elasticsearch
 echo '[elasticsearch-2.x] 
name=Elasticsearch repository for 2.x packages 
baseurl=http://packages.elastic.co/elasticsearch/2.x/centos 
gpgcheck=1 
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch 
enabled=1 
' | sudo tee /etc/yum.repos.d/elasticsearch.repo
sudo yum -y install elasticsearch
sudo systemctl start elasticsearch
echo '[logstash-2.2]
name=logstash repository for 2.2 packages
baseurl=http://packages.elasticsearch.org/logstash/2.2/centos
gpgcheck=1
gpgkey=http://packages.elasticsearch.org/GPG-KEY-elasticsearch
enabled=1' | sudo tee /etc/yum.repos.d/logstash.repo
sudo yum -y install logstash
systemctl start logstash.service
sudo rpm --import http://packages.elastic.co/GPG-KEY-elasticsearch
echo '[beats]
name=Elastic Beats Repository
baseurl=https://packages.elastic.co/beats/yum/el/$basearch
enabled=1
gpgkey=https://packages.elastic.co/GPG-KEY-elasticsearch
gpgcheck=1' | sudo tee /etc/yum.repos.d/elastic-beats.repo
sudo yum -y install filebeat
sudo systemctl start filebeat
cd /home/ec2-user/
curl -L -O https://download.elastic.co/beats/dashboards/beats-dashboards-1.1.0.zip
sudo yum -y install unzip
unzip beats-dashboards-*.zip
cd beats-dashboards-*
./load.sh
