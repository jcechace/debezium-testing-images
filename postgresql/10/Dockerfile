FROM registry.redhat.io/rhel8/postgresql-10

LABEL maintainer="Debezium Dev Team"

# ENV PLUGIN_VERSION=0.9.5
ENV POSTGRESQL_DATABASE=inventory
ENV POSTGRESQL_USER=debezium

# Copy the custom configuration which will be passed down to the server
COPY ./postgresql-start $APP_DATA/src/postgresql-start
COPY ./postgresql-init $APP_DATA/src/postgresql-init
COPY ./postgresql-cfg  $APP_DATA/src/postgresql-cfg
