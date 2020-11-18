--liquibase formatted sql
--changeset load_airline:1

insert into AIRLINES values ('DE','Delta Airways',0.11,0.03,0.5,1.5,20,10,5) ;
insert into AIRLINES values ('SW','Southwest Airlines',0.19,0.05,0.4,1.6,20,10,5);

