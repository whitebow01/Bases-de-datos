
/*
TRUNCATE TABLE ANIMALES;
TRUNCATE TABLE DESIGNACION;
TRUNCATE TABLE SECTOR;
DROP TABLE ANIMALES;
DROP TABLE DESIGNACION;
DROP TABLE SECTOR;
DROP TABLE CARGA;
DROP TABLE OPERARIO;
DROP TABLE CUIDADO;
*/

--CREACION DE TABLAS----------------------------------------------------
CREATE TABLE SECTOR (
    codigosector NUMBER(5) NOT NULL PRIMARY KEY,
    nombre VARCHAR2(25 CHAR) NOT NULL
);

CREATE TABLE ANIMAL (
    codigoanimal NUMBER(5) NOT NULL PRIMARY KEY,
    especie VARCHAR2(25),
    fecha_ingreso DATE NOT NULL,
    codigosector NUMBER(5) NOT NULL REFERENCES SECTOR
);

CREATE TABLE CUIDADO (
    codigocuidado NUMBER(5) NOT NULL PRIMARY KEY,
    descripcion VARCHAR2(25) NOT NULL
);

CREATE TABLE CARGA (
    codigocarga NUMBER(5) NOT NULL PRIMARY KEY,
    codigocuidado NUMBER(5) NOT NULL,
    codigoanimal NUMBER(5) NOT NULL
);

CREATE TABLE OPERARIO (
    rut VARCHAR2(20) NOT NULL PRIMARY KEY,
    nombre VARCHAR2(25) NOT NULL,
    appaterno VARCHAR2(25) NOT NULL,
    apmaterno VARCHAR2(25) NOT NULL,
    fono VARCHAR2(25),
    numeroCasa VARCHAR2(10) NOT NULL,
    calle VARCHAR2(25) NOT NULL,
    ciudad VARCHAR2(25) NOT NULL,
    region VARCHAR2(25) NOT NULL
);

CREATE TABLE DESIGNACION (
    codigoDesignacion NUMBER(5) NOT NULL PRIMARY KEY,
    codigosector NUMBER(5) NOT NULL REFERENCES SECTOR,
    rut VARCHAR2(20) NOT NULL REFERENCES OPERARIO
);



--CREACION DE REGISTROS----------------------------------------------------
INSERT INTO SECTOR VALUES (54658, 'TIGRES');
INSERT INTO SECTOR VALUES (12345, 'PANDAS');
INSERT INTO SECTOR VALUES (78946, 'LEONES');
INSERT INTO SECTOR VALUES (32354, 'IGUANAS');
--SELECT * FROM SECTOR;

INSERT INTO ANIMAL VALUES (6548, 'TIGRE', '12-03-2024',54658) ;
INSERT INTO ANIMAL VALUES (78954, 'PANDAS', '13-08-2024',12345) ;
INSERT INTO ANIMAL VALUES (35, 'LEONES', '16-10-2024',78946) ;
INSERT INTO ANIMAL VALUES (456, 'IGUANAS', '19-01-2024',32354) ;
--SELECT * FROM ANIMAL;

INSERT INTO CUIDADO VALUES (75345,'Debe comer carne');
INSERT INTO CUIDADO VALUES (54789,'Debe comer Bambu');
INSERT INTO CUIDADO VALUES (68785,'Debe comer carne de pollo');
INSERT INTO CUIDADO VALUES (32587,'Debe tomar el sol');
--SELECT * FROM CUIDADO;

--10 REGISTROS
INSERT INTO CARGA VALUES(11,75345,6548);
INSERT INTO CARGA VALUES(12,54789,78954);
INSERT INTO CARGA VALUES(13,68785,35);
INSERT INTO CARGA VALUES(14,32587,456);

INSERT INTO CARGA VALUES(15,32587,6548);
INSERT INTO CARGA VALUES(19,32587,78954);
INSERT INTO CARGA VALUES(20,32587,35);
INSERT INTO CARGA VALUES(22,75345,6548);
INSERT INTO CARGA VALUES(156,68785,6548);
INSERT INTO CARGA VALUES(35,54789,456);
--SELECT* FROM CARGA;

INSERT INTO OPERARIO VALUES(12354869-5, 'Juan', 'Velasquez', 'Molla', '+56954687598', 562, 'Las rosas', 'Concepcion', 'BioBio');
INSERT INTO OPERARIO VALUES(32654852-8, 'Carlos', 'Opar', 'Dementor', '+56945678215', 256, 'Daniel Belmar', 'Santiago', 'Metropolitana');
INSERT INTO OPERARIO VALUES(98562432-9, 'Matias', 'Pardo', 'Rojas', '+56965895478', 325, 'Carrera', 'Los angeles', 'BioBio');
INSERT INTO OPERARIO VALUES(28945687-1, 'Mirco', 'Rainen', 'Menem', '+56912357895', 25, 'San martin', 'Concepcion', 'BioBio');
--SELECT * FROM OPERARIO;

--10 REGISTROS
INSERT INTO DESIGNACION VALUES(89,54658,12354869-5);
INSERT INTO DESIGNACION VALUES(6,12345,32654852-8);
INSERT INTO DESIGNACION VALUES(67,78946,98562432-9);
INSERT INTO DESIGNACION VALUES(3,32354,28945687-1);

INSERT INTO DESIGNACION VALUES(658,78946, 12354869-5);
INSERT INTO DESIGNACION VALUES(64,54658, 32654852-8);
INSERT INTO DESIGNACION VALUES(2,12345, 98562432-9);
INSERT INTO DESIGNACION VALUES(31,78946, 28945687-1);
INSERT INTO DESIGNACION VALUES(14,78946, 98562432-9);
INSERT INTO DESIGNACION VALUES(26,32354, 32654852-8);


--4 Ampliar el ancho de un campo, de alguna tabla.
ALTER TABLE ANIMAL MODIFY especie varchar2(30);

--5	Cambiarle el nombre a alg�n campo.
RENAME ANIMAL to ANIMALES;

--6	Agregar un campo en alguna tabla.
ALTER TABLE ANIMALES ADD EdadAnimal NUMBER(4);
--Se deja not null ya que hay datos creados previamente

--7	Eliminar el campo de una tabla.
SELECT * FROM ANIMALES;
ALTER TABLE ANIMALES DROP COLUMN EDADANIMAL;

--8	Eliminar un registro de alguna tabla.
SELECT * FROM SECTOR;
INSERT INTO SECTOR VALUES (654, 'MONOS');--Se agrega un dato para despues eliminarlo
DELETE FROM SECTOR WHERE codigosector = 654;--Se elimina el registro recien creado

--9	Dejar vacia una de las tablas.
TRUNCATE TABLE CARGA;