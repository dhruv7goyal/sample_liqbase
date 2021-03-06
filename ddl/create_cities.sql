--liquibase formatted sql

--changeset dhruv:2
CREATE TABLE CITIES
   (
		CITY_ID INTEGER NOT NULL CONSTRAINT CITIES_PK PRIMARY KEY,
		CITY_NAME VARCHAR(24) NOT NULL,
		COUNTRY VARCHAR(26) NOT NULL,
		AIRPORT VARCHAR(3),
		LANGUAGE  VARCHAR(16),
		COUNTRY_ISO_CODE CHAR(2) CONSTRAINT COUNTRIES_FK
		REFERENCES COUNTRIES (COUNTRY_ISO_CODE)
   );
