--CREACION DE USUARIO COMUN EN DOCKER CON C##
--CREATE USER C##UsuarioPrueba IDENTIFIED BY carlos123;

-------------------------------------------------------------
--CREAR USUARIO A NIVEL LOCAL
-- Cambiar a la PDB deseada (si es necesario)
--ALTER SESSION SET CONTAINER = FREEPDB1;
-- Crear el usuario
--CREATE USER UsuarioPrueba IDENTIFIED BY carlos123;

-------------------------------------------------------------
-- Otorgar privilegios para iniciar sesión y conectarse
GRANT CREATE SESSION TO C##UsuarioPrueba;

-- Otorgar privilegios para crear y modificar tablas
GRANT CREATE TABLE TO C##UsuarioPrueba;
GRANT ALTER ANY TABLE TO C##UsuarioPrueba;
GRANT DROP ANY TABLE TO C##UsuarioPrueba;
GRANT INSERT ANY TABLE TO C##UsuarioPrueba;
GRANT UPDATE ANY TABLE TO C##UsuarioPrueba;
GRANT DELETE ANY TABLE TO C##UsuarioPrueba;

-- Otorgar otros privilegios útiles
GRANT CREATE VIEW TO C##UsuarioPrueba;
GRANT CREATE SEQUENCE TO C##UsuarioPrueba;
GRANT CREATE PROCEDURE TO C##UsuarioPrueba;

---OTRA TABLA de ejemplo

CREATE USER UsuarioPrueba IDENTIFIED BY pass;
GRANT CREATE SESSION TO UsuarioPrueba;

-- Otorgar privilegios para crear y modificar tablas
GRANT CREATE TABLE TO UsuarioPrueba;
GRANT ALTER ANY TABLE TO UsuarioPrueba;
GRANT DROP ANY TABLE TO UsuarioPrueba;
GRANT INSERT ANY TABLE TO UsuarioPrueba;
GRANT UPDATE ANY TABLE TO UsuarioPrueba;
GRANT DELETE ANY TABLE TO UsuarioPrueba;

-- Otorgar otros privilegios útiles
GRANT CREATE VIEW TO UsuarioPrueba;
GRANT CREATE SEQUENCE TO UsuarioPrueba;
GRANT CREATE PROCEDURE TO UsuarioPrueba;
GRANT UNLIMITED TABLESPACE TO UsuarioPrueba;
