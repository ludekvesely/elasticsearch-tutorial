#!/bin/bash


# TODO: separate to install and run scripts


# === Elasticsearch ===

# download and unzip
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.5.1.zip
unzip elasticsearch-5.5.1.zip
cd elasticsearch-5.5.1

# copy sample config
cp ../elasticsearch.yml config/

# copy czech dictionary
cp -r ../hunspell config/

# install ICU plugin
bin/elasticsearch-plugin install analysis-icu

# run elasticsearch!
{ bin/elasticsearch & } >/dev/null 2>/dev/null
cd ..

# === Kibana ===

# download end extract kibana
wget https://artifacts.elastic.co/downloads/kibana/kibana-5.5.1-darwin-x86_64.tar.gz
tar xzf kibana-5.5.1-darwin-x86_64.tar.gz
cd kibana-5.5.1-darwin-x86_64

# run kibana
{ bin/kibana & } >/dev/null 2>/dev/null

# === Cerebro ===
# TODO

# === Shut down ===
echo
read -p "Press ENTER to exit..." ENTER
kill $(jobs -p)
