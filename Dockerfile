FROM bitnami/postgresql:17.0.0-debian-12-r10


# install_packages git build-essential
# cd /tmp
# git clone --branch v0.4.1 https://github.com/pgvector/pgvector.git
# cd pgvector
# export PG_CONFIG=/opt/bitnami/postgresql/bin/pg_config
# make
# make install

USER root
RUN install_packages git build-essential
RUN cd /tmp && git clone --branch v0.4.1 https://github.com/pgvector/pgvector.git &&\
    cd pgvector &&\
    export PG_CONFIG=/opt/bitnami/postgresql/bin/pg_config &&\
    make &&\
    make install

USER 1001

