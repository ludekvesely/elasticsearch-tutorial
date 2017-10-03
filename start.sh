#!/bin/bash

echo "Starting Elasticsearch, Kibana and Cerebro..."

# start elasticsearch
{ elasticsearch-5.6.2/bin/elasticsearch & } >/dev/null 2>/dev/null

# start kibana
{ kibana-5.6.2-darwin-x86_64/bin/kibana & } >/dev/null 2>/dev/null

# start cerebro
{ cerebro-0.6.8/bin/cerebro & } >/dev/null 2>/dev/null

read -p "Press ENTER to exit..." ENTER
kill $(jobs -p)
