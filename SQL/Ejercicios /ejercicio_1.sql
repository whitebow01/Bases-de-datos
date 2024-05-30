--CREACION DE TABLAS
CREATE TABLE DEPARTAMENTO(
departamento_id NUMBER(5) PRIMARY KEY,
nombre VARCHAR2(25)
);

CREATE TABLE EMPLEADOS(
    id NUMBER(5) PRIMARY KEY,
    nombre VARCHAR2(25),
    aMaterno VARCHAR2(25),
    aPaterno VARCHAR2(25),
    fecha_contrato DATE,
    salario NUMBER(7,2),
    departamento_id NUMBER(5),
    CONSTRAINT fk_departamentos FOREIGN KEY(departamento_id) REFERENCES DEPARTAMENTO(departamento_id)
);

--INSERCION DE DATOS
INSERT INTO DEPARTAMENTO VALUES(12345, 'Proyecto Uno');
INSERT INTO DEPARTAMENTO VALUES(64598, 'Proyecto Dos');

INSERT INTO EMPLEADOS VALUES(75395, 'Juan', 'Munoz', 'Valencia', '15-05-2024', 60000, 12345);
INSERT INTO EMPLEADOS VALUES(35715, 'Carlos', 'Ost', 'Stone', '17-04-2024',30000, 64598);

--CONSULTAS SQL
SELECT * FROM DEPARTAMENTO;
SELECT * FROM EMPLEADOS;


SELECT nombre, departamento_id FROM EMPLEADOS WHERE fecha_contrato = '15-05-2024';