FROM grafana/loki:1.4.1

RUN mkdir -p /loki/conf/
RUN mkdir -p /loki/index/
RUN mkdir -p /loki/chunks/
COPY ./conf/ /loki/conf/
CMD ["-config.file=/loki/conf/local-config.yaml"]