#!/bin/bash

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
bin/elasticsearch
