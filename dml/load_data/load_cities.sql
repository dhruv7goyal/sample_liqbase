--liquibase formatted sql
--changeset LoadCities:1

insert into CITIES VALUES (1,'Amsterdam','Netherlands','AMS','Dutch','NL');
insert into CITIES VALUES (2,'Athens','Greece','ATH','Greek','GR');
insert into CITIES VALUES (3,'Auckland','New Zealand','AKL','English','NZ');
insert into CITIES VALUES (4,'Beirut','Lebanon','BEY','Arabic','LB');
insert into CITIES VALUES (5,'Bogota','Colombia','BOG','Spanish','CO');
