FROM postgres:latest

ENV POSTGRES_USER=yhchoi
ENV POSTGRES_PASSWORD=1234
ENV POSTGRES_DB=mydb

USER root
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    postgresql-server-dev-all \
    && rm -rf /var/lib/apt/lists/*

RUN cd /tmp \
    && git clone --branch v0.7.0 https://github.com/pgvector/pgvector.git \
    && cd pgvector \
    && make \
    && make install
