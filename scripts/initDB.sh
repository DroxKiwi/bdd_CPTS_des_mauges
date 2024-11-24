#!/bin/sh

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
CREATE USER admin;
CREATE DATABASE cpts;
GRANT ALL PRIVILEGES ON DATABASE cpts TO admin;

EOSQL
psql -U postgres -d cpts -a -f ./initdb.sql

#psql -U postgres -c 'create database cpts;'
#psql -U postgres -d cpts -a -f ./initdb.sql