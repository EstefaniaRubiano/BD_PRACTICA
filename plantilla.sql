/* *****************************************************
  INSTITUT TIC de Barcelona
    CFGS: DAM 1A
    Mòdul: 0484 Bases de dades. 
    AUTORS: 
    - Estefanía Rubiano
    - Abigail Cáceres
    DATA: 19/12/2024
****************************************************** */

-- Creació de les taules

--Borrar las tablas anteriores 
drop tables if exist Companya;
drop tables if exist Avió;
drop tables if exist Aeroport;
drop tables if exist Mostrador;
drop tables if exixst Personal;

create table Companyia (
  NOM varchar(40) NOT NULL,
  IATA varchar(6) NOT NULL,
  CODE3 char(6) NULL,
  ICAO char(6) NULL,
  PAIS varchar(40) NOT NULL
);
create table Avió (
  NUM_SERIE varchar(30) NOT NULL,
  TIPUS varchar(10) NOT NULL,
  FABRICANT varchar(20) NOT NULL,
  ANY_FABRICACIÓ year(2) NULL
);
create table Aeroport (
  CODI varchar(4) NOT NULL,
  PAIS varchar(4) NOT NULL,
  CIUTAT varchar(40) NOT NULL,
  IATA varchar(4) NULL,
  NOM varchar(55) NULL,
  ANY_CONSTRUCCIO year(4) NULL
);
create table Mostrador (
  NUMERO integer
);
create table Personal (
  NOM_EMPLEAT integer,
  NOM varchar(25) NOT NULL,
  COGNOM varchar(35) NOT NULL,
  PASSAPORT varchar(20) NOT NULL,
  SOU float NOT NULL
);
create table Hostessa (
  
);
create table Pilot (
  HORES_VOL integer NULL
);
create table Passatger (
  PASSAPORT varchar(20) NOT NULL,
  NOM  varchar(30) NOT NULL,
  COGNOM varchar(50) NULL,
  ADRECA varchar(70) NULL,
  TELEFON varchar(9) NULL,
  EMAIL varchar(40) NULL,
  DATA_NAIXEMENT /*?*/ NULL
  GENERE 
);
create table Vol (
  CODI varchar(9) NOT NULL,
  DATA date NOT NULL,
  DURADA integer NOT NULL,
  DESCRIPCIO text NULL
);
