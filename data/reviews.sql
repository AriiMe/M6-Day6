CREATE TABLE IF NOT EXISTS
 reviews (
    review_id bpchar NOT NULL PRIMARY KEY,
    user character varying(50) NOT NULL,
    text character varying(30),
    articles character varying(100), 
);