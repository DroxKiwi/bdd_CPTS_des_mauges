
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

CREATE TABLE IF NOT EXISTS globaldata(
    globalData_id serial PRIMARY KEY,
    tel varchar(14),
    adr varchar(255),
    postalcode varchar(5),
    facebook varchar(255),
    linkedin varchar(255),
    chiffrepsl varchar(6),
    chiffrecom varchar(6),
    chiffrehab varchar(6),
    hommepageprjstext varchar,
    quisommesnousmaintext varchar,
    mail varchar(255),
    adhererurl varchar(255)
);

CREATE TABLE IF NOT EXISTS livret_pages (
    livret_pages_id serial PRIMARY KEY,
    numero_page int,
    img varchar
);

CREATE TABLE IF NOT EXISTS coassos (
    coassos_id serial PRIMARY KEY,
    img varchar,
    redirect_url varchar(255)
);

CREATE TABLE IF NOT EXISTS orga (
    orga_id serial PRIMARY KEY,
    name varchar(255),
    img varchar,
    role varchar(255),
    description varchar(255)
);

INSERT INTO users (username, password, adminofurl) VALUES ('admin1', '$2b$12$L.0gC.VQFMeBf1oGyMKNF.CrL2fqF88YKoghumqhMeBq0RD.oSY1e', 'cptsdesmauges.fr');
INSERT INTO users (username, password, adminofurl) VALUES ('admin2', '$2b$12$hZvhLCefypuQU.dltyTcS.qaL5CR85oaqSo/hTragf/3rBY0HIrOS', 'cptsdesmauges.fr');
INSERT INTO users (username, password, adminofurl) VALUES ('admin3', '$2b$12$dt2ayA1R7SwoSTflkefRquwwT6JhJDb0y1YTVvMLZu1Q/ODB9GAz2', 'cptsdesmauges.fr');
INSERT INTO users (username, password, adminofurl) VALUES ('admin4', '$2b$12$6LEBDNLv/l.OFWrfFNrrj.wCKmdYeAX5MuLzoz9qOWRuSlEaIMg1S', 'cptsdesmauges.fr');

INSERT INTO globaldata (tel, adr, postalcode, facebook, linkedin, chiffrepsl, chiffrecom, chiffrehab, hommepageprjstext, quisommesnousmaintext, mail) VALUES ('06', 'adresse', '49000', 'http', 'http', '0', '0', '0', '', '', 'cptsdesmauges@gmail.com');