#!/bin/bash

# cleanup old files and dirs
rm -rf elasticsearch-* kibana-* cerebro-*


# === Elasticsearch ===

# download and unzip
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.2.zip
unzip elasticsearch-5.6.2.zip
rm elasticsearch-5.6.2.zip

# copy sample config
cp elasticsearch.yml elasticsearch-5.6.2/config/

# copy czech dictionary
cp -r hunspell elasticsearch-5.6.2/config/

# install ICU plugin
elasticsearch-5.6.2/bin/elasticsearch-plugin install analysis-icu


# === Kibana ===

# download end extract
wget https://artifacts.elastic.co/downloads/kibana/kibana-5.6.2-darwin-x86_64.tar.gz
tar xzf kibana-5.6.2-darwin-x86_64.tar.gz
rm -f kibana-5.6.2-darwin-x86_64.tar.gz


# === Cerebro ===

# download and extract
wget https://github.com/lmenezes/cerebro/releases/download/v0.6.8/cerebro-0.6.8.zip
unzip cerebro-0.6.8.zip
rm cerebro-0.6.8.zip
