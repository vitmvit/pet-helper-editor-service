-- Adminer 4.8.1 PostgreSQL 16.2 (Debian 16.2-1.pgdg120+2) dump

DROP TABLE IF EXISTS "animal_type";
DROP SEQUENCE IF EXISTS animal_type_id_seq;
CREATE SEQUENCE animal_type_id_seq INCREMENT 1 MINVALUE 201 MAXVALUE 9223372036854775807 START 187 CACHE 1;

CREATE TABLE "public"."animal_type"
(
    "id"   bigint DEFAULT nextval('animal_type_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "animal_type_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "ukjtn9d2he4ee6abgyi43w8r8o0" UNIQUE ("name")
) WITH (oids = false);

DROP TABLE IF EXISTS "article";
DROP SEQUENCE IF EXISTS article_id_seq;
CREATE SEQUENCE article_id_seq INCREMENT 1 MINVALUE 15 MAXVALUE 9223372036854775807 START 12 CACHE 1;

CREATE TABLE "public"."article"
(
    "id"            bigint DEFAULT nextval('article_id_seq') NOT NULL,
    "create_date"   timestamp(6),
    "update_date"   timestamp(6),
    "content"       text,
    "name"          character varying(255)                   NOT NULL,
    "photo_uuid"    character varying(255),
    "redactor_name" character varying(255)                   NOT NULL,
    "status"        character varying(255),
    CONSTRAINT "article_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

DROP TABLE IF EXISTS "breed";
DROP SEQUENCE IF EXISTS breed_id_seq;
CREATE SEQUENCE breed_id_seq INCREMENT 1 MINVALUE 2461 MAXVALUE 9223372036854775807 START 16 CACHE 1;

CREATE TABLE "public"."breed"
(
    "id"      bigint DEFAULT nextval('breed_id_seq') NOT NULL,
    "name"    character varying(255),
    "type_id" bigint,
    CONSTRAINT "breed_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "ukk7fokt65aja7ald1r3ana2uwc" UNIQUE ("name")
) WITH (oids = false);

DROP TABLE IF EXISTS "state_template";
DROP SEQUENCE IF EXISTS state_template_id_seq;
CREATE SEQUENCE state_template_id_seq INCREMENT 1 MINVALUE 20 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."state_template"
(
    "id"          bigint DEFAULT nextval('state_template_id_seq') NOT NULL,
    "description" character varying(255)                          NOT NULL,
    "name"        character varying(255)                          NOT NULL,
    "uuid_image"  character varying(255)                          NOT NULL,
    CONSTRAINT "state_template_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

DROP TABLE IF EXISTS "tag";
DROP SEQUENCE IF EXISTS tag_id_seq;
CREATE SEQUENCE tag_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."tag"
(
    "id"         bigint DEFAULT nextval('tag_id_seq') NOT NULL,
    "article_id" bigint,
    "name"       character varying(255),
    CONSTRAINT "tag_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

DROP TABLE IF EXISTS "vaccination_type";
DROP SEQUENCE IF EXISTS vaccination_type_id_seq;
CREATE SEQUENCE vaccination_type_id_seq INCREMENT 1 MINVALUE 25 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."vaccination_type"
(
    "id"   bigint DEFAULT nextval('vaccination_type_id_seq') NOT NULL,
    "name" character varying(255),
    CONSTRAINT "uki9s4mhncndjvphcj3uy9ye0eo" UNIQUE ("name"),
    CONSTRAINT "vaccination_type_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "vaccination_type_aud";
CREATE TABLE "public"."vaccination_type_aud"
(
    "id"      bigint  NOT NULL,
    "rev"     integer NOT NULL,
    "revtype" smallint,
    "name"    character varying(255),
    CONSTRAINT "vaccination_type_aud_pkey" PRIMARY KEY ("rev", "id")
) WITH (oids = false);


ALTER TABLE ONLY "public"."animal_type_aud" ADD CONSTRAINT "fkqqufta0fhp9409cudr2m2ix0o" FOREIGN KEY (rev) REFERENCES revinfo(rev) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."breed" ADD CONSTRAINT "fk_type_animal_id_to_id" FOREIGN KEY (type_id) REFERENCES animal_type(id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."state_template_aud" ADD CONSTRAINT "fki8dc98qpn0x1nufrob6spwlnb" FOREIGN KEY (rev) REFERENCES revinfo(rev) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."tag" ADD CONSTRAINT "fk_article_id_to_id" FOREIGN KEY (article_id) REFERENCES article(id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."vaccination_type_aud" ADD CONSTRAINT "fkd40j896pploikj28ua9gignyv" FOREIGN KEY (rev) REFERENCES revinfo(rev) NOT DEFERRABLE;

-- 2024-07-16 10:25:17.372667+00