
CREATE TABLE if NOT EXISTS users (
    user_id serial PRIMARY KEY,
    username varchar(255) UNIQUE NOT NULL,
    accessToken varchar(255),
    bearerToken varchar(255),
    password varchar(80),
    adminofurl varchar(255),
    actif boolean NOT NULL DEFAULT TRUE
);

CREATE TABLE if NOT EXISTS articles (
    article_id serial PRIMARY KEY,
    name varchar(255),
    subtitle varchar(255),
    description varchar,
    img varchar,
    tagId varchar(255),
    tecTimeInsert timestamp,
    actif boolean NOT NULL DEFAULT TRUE
);

CREATE TABLE if NOT EXISTS events (
    event_id serial PRIMARY KEY,
    name varchar(255),
    subtitle varchar(255),
    description varchar,
    img varchar,
    tagId varchar(255),
    startDate timestamp,
    endDate timestamp,
    tecTimeInsert timestamp,
    actif boolean NOT NULL DEFAULT TRUE
);

CREATE TABLE if NOT EXISTS tags (
    tag_id serial PRIMARY KEY,
    name varchar(255) UNIQUE NOT NULL,
    color varchar(255),
    actif boolean NOT NULL DEFAULT TRUE
);

CREATE TABLE if NOT EXISTS prod (
    prod_id serial PRIMARY KEY,
    prof_ids varchar NOT NULL,
    name varchar(255) UNIQUE NOT NULL,
    img varchar,
    actif boolean NOT NULL DEFAULT TRUE
);

CREATE TABLE if NOT EXISTS prof (
    prof_id serial PRIMARY KEY,
    name varchar(255),
    subtitle varchar(255),
    description varchar,
    img varchar,
    tecTimeInsert timestamp,
    actif boolean NOT NULL DEFAULT TRUE
);

CREATE TABLE if NOT EXISTS patd (
    patd_id serial PRIMARY KEY,
    patf_ids varchar NOT NULL,
    name varchar(255) UNIQUE NOT NULL,
    img varchar,
    actif boolean NOT NULL DEFAULT TRUE
);

CREATE TABLE if NOT EXISTS patf (
    patf_id serial PRIMARY KEY,
    name varchar(255),
    subtitle varchar(255),
    description varchar,
    img varchar,
    tecTimeInsert timestamp,
    actif boolean NOT NULL DEFAULT TRUE
);

CREATE TABLE if NOT EXISTS pages (
    pages_id serial PRIMARY KEY,
    name varchar(255) UNIQUE NOT NULL,
    url varchar(255) UNIQUE NOT NULL
);

INSERT INTO users (username, password, adminofurl) VALUES ('admin', '$2b$12$L.0gC.VQFMeBf1oGyMKNF.CrL2fqF88YKoghumqhMeBq0RD.oSY1e', 'cptsdesmauges.fr')