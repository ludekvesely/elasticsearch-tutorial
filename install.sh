#!/bin/bash

# cleanup old files and dirs
rm -rf elasticsearch-* kibana-* cerebro-*


# === Elasticsearch ===

# download and unzip
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.3.zip
unzip elasticsearch-6.2.3.zip
rm elasticsearch-6.2.3.zip

# copy sample config
cp elasticsearch.yml elasticsearch-6.2.3/config/

# copy czech dictionary
cp -r hunspell elasticsearch-6.2.3/config/

# install ICU plugin
elasticsearch-6.2.3/bin/elasticsearch-plugin install analysis-icu


# === Kibana ===

# download end extract
wget https://artifacts.elastic.co/downloads/kibana/kibana-6.2.3-darwin-x86_64.tar.gz
tar xzf kibana-6.2.3-darwin-x86_64.tar.gz
rm -f kibana-6.2.3-darwin-x86_64.tar.gz


# === Cerebro ===

# download and extract
wget https://github.com/lmenezes/cerebro/releases/download/v0.7.2/cerebro-0.7.2.zip
unzip cerebro-0.7.2.zip
rm cerebro-0.7.2.zip
chmod +x cerebro-0.7.2/bin/cerebro
