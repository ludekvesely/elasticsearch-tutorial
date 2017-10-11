FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.2
COPY hunspell /usr/share/elasticsearch/config/hunspell/
COPY elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown -R elasticsearch:elasticsearch config/*
USER elasticsearch
RUN elasticsearch-plugin install analysis-icu
