#!/bin/bash

echo "Starting Elasticsearch, Kibana and Cerebro..."

# start elasticsearch
{ elasticsearch-6.2.3/bin/elasticsearch & } >/dev/null 2>/dev/null

# start kibana
{ kibana-6.2.3-darwin-x86_64/bin/kibana & } >/dev/null 2>/dev/null

# start cerebro
{ cerebro-0.7.2/bin/cerebro & } >/dev/null 2>/dev/null

read -p "Press ENTER to exit..." ENTER
kill $(jobs -p)
