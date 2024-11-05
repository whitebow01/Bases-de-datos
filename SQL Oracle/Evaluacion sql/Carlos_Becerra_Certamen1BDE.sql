CREATE TABLE TURISTAS(
rutturista VARCHAR2(10) NOT NULL PRIMARY KEY,
nomturista VARCHAR2(15),
appatturista VARCHAR2(15),
apmatturista VARCHAR2(15),
emailturista VARCHAR2(30)
)

CREATE TABLE PACKTURISTICOS(
codpack NUMBER(9)NOT NULL PRIMARY KEY,
cantdias NUMBER(2),
paisdestino VARCHAR2(15)
)

CREATE TABLE VIAJES(
codviaje NUMBER(10) NOT NULL PRIMARY KEY,
fechaviaje DATE,
costoviaje NUMBER(8),
rutturista VARCHAR2(10) NOT NULL REFERENCES TURISTAS,
codpack NUMBER(9) NOT NULL REFERENCES PACKTURISTICOS 
)

INSERT INTO TURISTAS VALUES ('1111111-9','Julian','Rebolledo','Toloza','JRT@gmail.cl');
INSERT INTO TURISTAS VALUES ('2222222-9','Danitza','Contreras','Aguilera','DCA@gmail.cl');
INSERT INTO PACKTURISTICOS VALUES(123456789,10,'Francisca');
INSERT INTO PACKTURISTICOS VALUES(123456790,35,'España');
--------------------------------------------------------------------------------
--1) SECUENCIA
create sequence sec_viaje start with 1 increment by 1;

--2) INSERTAR 8 VIAJES
INSERT INTO VIAJES VALUES (sec_viaje.nextval,'12-03-2024',42000,'1111111-9',123456789);  
INSERT INTO VIAJES VALUES (sec_viaje.nextval,'15-05-2024',50000,'1111111-9',123456790); 
INSERT INTO VIAJES VALUES (sec_viaje.nextval,'16-06-2024',70000,'1111111-9',123456790);
INSERT INTO VIAJES VALUES (sec_viaje.nextval,'15-07-2024',60000,'1111111-9',123456790);

INSERT INTO VIAJES VALUES (sec_viaje.nextval,'10-01-2023',32000,'2222222-9',123456789); 
INSERT INTO VIAJES VALUES (sec_viaje.nextval,'10-01-2023',55000,'2222222-9',123456790); 
INSERT INTO VIAJES VALUES (sec_viaje.nextval,'10-01-2023',15000,'2222222-9',123456789); 
INSERT INTO VIAJES VALUES (sec_viaje.nextval,'10-01-2023',90000,'2222222-9',123456790); 

select * from VIAJES;

--3)VISTA
CREATE VIEW vista_viajes as select rutturista from viajes where rutturista = '1111111-9';

--4)EJECUTAR
SELECT * FROM vista_viajes;

--5) VISTA MATERIALIZADA
CREATE MATERIALIZED VIEW VISTAMAT_VIAJES2 AS SELECT codviaje, costoviaje FROM viajes WHERE costoviaje > 40000;

--6)EJECUTAR VISTA MATERIALIZADA
select * from VISTAMAT_VIAJES2;

--7) DICCIONARIO
SELECT * FROM USER_CATALOG WHERE TABLE_TYPE='VIEW';

--8)INDICE
create index indice_fecha on viajes(fechaviaje);
create index indice_nombre on turistas(nomturista);

--9)MOSTRAR INDICE CON DICCIONARIO
SELECT INDEX_NAME FROM ALL_INDEXES WHERE TABLE_NAME='VIAJES';
SELECT INDEX_NAME FROM ALL_INDEXES WHERE TABLE_NAME='TURISTAS';


--10)SINONIMOS
create synonym packturis for PACKTURISTICOS;
create synonym turist for TURISTAS;
create synonym via for VIAJES;

drop synonym tra ; 

--11) PROBAR SINONIMOS

select * from packturis;
select * from turist;
select * from via;

--12)MOSTRAR SINONIMOS
SELECT SYNONYM_NAME, TABLE_NAME FROM ALL_SYNONYMS WHERE OWNER='SYSTEM';








