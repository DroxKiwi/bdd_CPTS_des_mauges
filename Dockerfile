FROM postgres:9.6
WORKDIR /scripts
COPY ./scripts /scripts
#COPY ./scripts /docker-entrypoint-initdb.d/init-user-db.sh
RUN service postgresql start