ARG IMAGE_TAG=latest-no-plugins
FROM kestra/kestra:$IMAGE_TAG

RUN /app/kestra plugins install \
  io.kestra.plugin:plugin-script-python:LATEST \
  io.kestra.plugin:plugin-script-shell:LATEST \
  io.kestra.plugin:plugin-jdbc-postgres:LATEST \
  io.kestra.plugin:plugin-dbt:LATEST