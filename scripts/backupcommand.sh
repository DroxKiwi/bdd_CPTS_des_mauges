#!/bin/sh

psql -U postgres -c 'create database cpts;'
psql -U postgres -c 'CREATE TABLE if NOT EXISTS users (
    idUser serial PRIMARY KEY,
    authName varchar(256) UNIQUE NOT NULL,
    password varchar(80)
);'

psql -U postgres -c 'CREATE TABLE if NOT EXISTS agenda (
    idAgenda serial PRIMARY KEY,
    name varchar(256) NULL,
    datestart date NULL
);'