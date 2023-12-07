CREATE SEQUENCE Posts_id_seq;

CREATE TABLE public.posts 
( 
  id integer NOT NULL DEFAULT nextval('Posts_id_seq'::regclass), 
  title text COLLATE pg_catalog."default", 
  body text COLLATE pg_catalog."default", 
  CONSTRAINT "Posts_pkey" PRIMARY KEY (id)
) 
WITH
( 
  OIDS = FALSE
);

-- TABLESPACE pg_default; 用Supabass不用這行，一開始就有

ALTER TABLE public.posts OWNER to postgres;

INSERT INTO posts(title, body) 
VALUES('the first title only','and this is the body of the first post.');

INSERT INTO posts(title, body) 
VALUES('yet another title','and some more copy text for another body.');
