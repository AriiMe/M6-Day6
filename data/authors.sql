CREATE TABLE IF NOT EXISTS
 authors (
    author_id bpchar NOT NULL PRIMARY KEY,
    name character varying(50) NOT NULL,
    img character varying(30),
    articles character varying(100), 
);