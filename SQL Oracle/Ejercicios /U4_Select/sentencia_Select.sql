create table equipos(
codEquipo varchar2(5) not null primary key,
descripEquipo varchar2(30),
marcaEquipo varchar2(20),
modeloEquipo varchar2(14)
);
create table personas(
rutPer varchar2(10) not null primary key, 
nomPer varchar2(20),
apPatPer varchar2(15),
apMatPer varchar2(15),
fonoPer varchar2(14)
);
create table ventas(
codVenta number(4) not null primary key,
fechaVenta date,
costoVenta number(6),
codEquipo varchar2(5) not null references equipos,
rutPersona varchar2(10) not null references personas
);
insert into equipos values('RTY67','Taladro','Makita','RD70');
insert into equipos values('DRF54','Motosierra','Stihl','ST67');
insert into equipos values('DRF56','Cepilladora','ByD','BD56');
insert into equipos values('FG567','Martillo','Makita','MT56');
insert into equipos values('RTY54','Serrucho','Stihl','ST56');
insert into personas values('10534876-5','David','Parra','Lara','945219992');
insert into personas values('14340300-k','Marta','Soto','Vera','979050234');
insert into personas values('12500320-8','Daniel','Mena','Duarte','994568001');
insert into personas values('8768320-1','Carla','Soto','Jara','');
insert into personas values('9435678-9','Gabriel','Castro','Godoy','');
insert into personas values('14567980-k','Francisco','Barra','Méndez','987658908');
insert into ventas values(2354,'15/4/2023',23000,'RTY67','10534876-5');
insert into ventas values(2365,'23/8/2023',87000,'DRF54','10534876-5');
insert into ventas values(2378,'11/7/2023',59000,'RTY67','14340300-k');
insert into ventas values(2398,'23/6/2023',45000,'DRF54','14567980-k');
insert into ventas values(2366,'6/5/2023',59000,'RTY54','9435678-9');
insert into ventas values(2333,'25/8/2023',28900,'FG567','8768320-1');






create table equipos(
codEquipo varchar2(5) not null primary key,
descripEquipo varchar2(30),
marcaEquipo varchar2(20),
modeloEquipo varchar2(14)
);
create table personas(
rutPer varchar2(10) not null primary key, 
nomPer varchar2(20),
apPatPer varchar2(15),
apMatPer varchar2(15),
fonoPer varchar2(14)
);
create table ventas(
codVenta number(4) not null primary key,
fechaVenta date,
costoVenta number(6),
codEquipo varchar2(5) not null references equipos,
rutPersona varchar2(10) not null references personas
);
insert into equipos values('RTY67','Taladro','Makita','RD70');
insert into equipos values('DRF54','Motosierra','Stihl','ST67');
insert into equipos values('DRF56','Cepilladora','ByD','BD56');
insert into equipos values('FG567','Martillo','Makita','MT56');
insert into equipos values('RTY54','Serrucho','Stihl','ST56');
insert into personas values('10534876-5','David','Parra','Lara','945219992');
insert into personas values('14340300-k','Marta','Soto','Vera','979050234');
insert into personas values('12500320-8','Daniel','Mena','Duarte','994568001');
insert into personas values('8768320-1','Carla','Soto','Jara','');
insert into personas values('9435678-9','Gabriel','Castro','Godoy','');
insert into personas values('14567980-k','Francisco','Barra','Méndez','987658908');
insert into ventas values(2354,'15/4/2023',23000,'RTY67','10534876-5');
insert into ventas values(2365,'23/8/2023',87000,'DRF54','10534876-5');
insert into ventas values(2378,'11/7/2023',59000,'RTY67','14340300-k');
insert into ventas values(2398,'23/6/2023',45000,'DRF54','14567980-k');
insert into ventas values(2366,'6/5/2023',59000,'RTY54','9435678-9');
insert into ventas values(2333,'25/8/2023',28900,'FG567','8768320-1');
create table equipos(
codEquipo varchar2(5) not null primary key,
descripEquipo varchar2(30),
marcaEquipo varchar2(20),
modeloEquipo varchar2(14)
);
create table personas(
rutPer varchar2(10) not null primary key, 
nomPer varchar2(20),
apPatPer varchar2(15),
apMatPer varchar2(15),
fonoPer varchar2(14)
);
create table ventas(­
codVenta number(4) not null primary key,
fechaVenta date,
costoVenta number(6),
codEquipo varchar2(5) not null references equipos,
rutPersona varchar2(10) not null references personas
);
insert into equipos values('RTY67','Taladro','Makita','RD70');
insert into equipos values('DRF54','Motosierra','Stihl','ST67');
insert into equipos values('DRF56','Cepilladora','ByD','BD56');
insert into equipos values('FG567','Martillo','Makita','MT56');
insert into equipos values('RTY54','Serrucho','Stihl','ST56');
insert into personas values('10534876-5','David','Parra','Lara','945219992');
insert into personas values('14340300-k','Marta','Soto','Vera','979050234');
insert into personas values('12500320-8','Daniel','Mena','Duarte','994568001');
insert into personas values('8768320-1','Carla','Soto','Jara','');
insert into personas values('9435678-9','Gabriel','Castro','Godoy','');
insert into personas values('14567980-k','Francisco','Barra','Méndez','987658908');
insert into ventas values(2354,'15/4/2023',23000,'RTY67','10534876-5');
insert into ventas values(2365,'23/8/2023',87000,'DRF54','10534876-5');
insert into ventas values(2378,'11/7/2023',59000,'RTY67','14340300-k');
insert into ventas values(2398,'23/6/2023',45000,'DRF54','14567980-k');
insert into ventas values(2366,'6/5/2023',59000,'RTY54','9435678-9');
insert into ventas values(2333,'25/8/2023',28900,'FG567','8768320-1');


SELECT * FROM EQUIPOS
SELECT * FROM PERSONAS
SELECT * FROM VENTAS



SELECT FECHAVENTA, COSTOVENTA FROM VENTAS WHERE CODVENTA=2365

SELECT RUTPERSONA FROM VENTAS WHERE COSTOVENTA > 40000

SELECT FECHAVENTA FROM VENTAS WHERE FECHAVENTA < '20-08-2023'

SELECT CODEEQUIPO,RUTPERSONA FROM VENTAS WHERE FECHAVENTA >= '01/06/2023' and <= '30/07/2023'

SELECT CODEEQUIPO FROM EQUIPOS WHERE MARCAEQUIPO <> 'Stihl';
