CREATE TABLE IF NOT EXISTS
 articles (
    article_id bpchar NOT NULL PRIMARY KEY,
    head_line character varying(50) NOT NULL,
    sub_head character varying(30),
    content character varying(100),
    category character varying(20),
    author character varying(30),
    
);