FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.3
COPY hunspell /usr/share/elasticsearch/config/hunspell/
COPY elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown -R elasticsearch:elasticsearch config/*
USER elasticsearch
RUN elasticsearch-plugin install analysis-icu
