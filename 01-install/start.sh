#!/bin/bash

echo "Starting Elasticsearch, Kibana and Cerebro..."

# start elasticsearch
{ elasticsearch-5.5.1/bin/elasticsearch & } >/dev/null 2>/dev/null

# start kibana
{ kibana-5.5.1-darwin-x86_64/bin/kibana & } >/dev/null 2>/dev/null

# start cerebro
{ cerebro-0.6.6/bin/cerebro & } >/dev/null 2>/dev/null

read -p "Press ENTER to exit..." ENTER
kill $(jobs -p)
