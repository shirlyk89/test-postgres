--
-- PostgreSQL database cluster dump
--

-- Started on 2026-07-01 19:21:47 -05

\restrict PKzgjXcZWAOfPlaPleMVT1PHT7EY3HSgTHy6oGqgpQshA8ZJQu7WjZaWw2cSuLg

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;






\unrestrict PKzgjXcZWAOfPlaPleMVT1PHT7EY3HSgTHy6oGqgpQshA8ZJQu7WjZaWw2cSuLg

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict BbsFepeA5wkfvgd1ngHAcylOLWkVHEJkxIdWeeYYxtFcDHfFZ1HG0cXdDQbea0p

-- Dumped from database version 14.23 (Ubuntu 14.23-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.23 (Ubuntu 14.23-0ubuntu0.22.04.1)

-- Started on 2026-07-01 19:21:47 -05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2026-07-01 19:21:47 -05

--
-- PostgreSQL database dump complete
--

\unrestrict BbsFepeA5wkfvgd1ngHAcylOLWkVHEJkxIdWeeYYxtFcDHfFZ1HG0cXdDQbea0p

--
-- Database "Test" dump
--

--
-- PostgreSQL database dump
--

\restrict 6iQhXyXhdAWJLRizwehU0JOlo2XlczpVEptaNYWWaqntu6jFKfA5O122zposFoF

-- Dumped from database version 14.23 (Ubuntu 14.23-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.23 (Ubuntu 14.23-0ubuntu0.22.04.1)

-- Started on 2026-07-01 19:21:47 -05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3426 (class 1262 OID 24769)
-- Name: Test; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Test" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE "Test" OWNER TO postgres;

\unrestrict 6iQhXyXhdAWJLRizwehU0JOlo2XlczpVEptaNYWWaqntu6jFKfA5O122zposFoF
\connect "Test"
\restrict 6iQhXyXhdAWJLRizwehU0JOlo2XlczpVEptaNYWWaqntu6jFKfA5O122zposFoF

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2026-07-01 19:21:47 -05

--
-- PostgreSQL database dump complete
--

\unrestrict 6iQhXyXhdAWJLRizwehU0JOlo2XlczpVEptaNYWWaqntu6jFKfA5O122zposFoF

--
-- Database "consesionario" dump
--

--
-- PostgreSQL database dump
--

\restrict rJPh6o7zGwX9rAofcArlNicuF2kJUBAhIQJndVE8qZ6kUlcC7q8thyWOl28K4bv

-- Dumped from database version 14.23 (Ubuntu 14.23-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.23 (Ubuntu 14.23-0ubuntu0.22.04.1)

-- Started on 2026-07-01 19:21:47 -05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3505 (class 1262 OID 24977)
-- Name: consesionario; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE consesionario WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE consesionario OWNER TO postgres;

\unrestrict rJPh6o7zGwX9rAofcArlNicuF2kJUBAhIQJndVE8qZ6kUlcC7q8thyWOl28K4bv
\connect consesionario
\restrict rJPh6o7zGwX9rAofcArlNicuF2kJUBAhIQJndVE8qZ6kUlcC7q8thyWOl28K4bv

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 24979)
-- Name: consesionario; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA consesionario;


ALTER SCHEMA consesionario OWNER TO postgres;

--
-- TOC entry 834 (class 1247 OID 24996)
-- Name: estado; Type: TYPE; Schema: consesionario; Owner: postgres
--

CREATE TYPE consesionario.estado AS ENUM (
    'nuevo',
    'usado'
);


ALTER TYPE consesionario.estado OWNER TO postgres;

--
-- TOC entry 849 (class 1247 OID 25037)
-- Name: tipo_servicio; Type: TYPE; Schema: consesionario; Owner: postgres
--

CREATE TYPE consesionario.tipo_servicio AS ENUM (
    'reparacion',
    'mantenimiento'
);


ALTER TYPE consesionario.tipo_servicio OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 25076)
-- Name: cliente_potencial; Type: TABLE; Schema: consesionario; Owner: postgres
--

CREATE TABLE consesionario.cliente_potencial (
    id_usuario integer NOT NULL,
    nombre character varying(60) NOT NULL,
    email character varying(50) NOT NULL,
    telefono character varying(12) NOT NULL,
    id_vehiculo integer NOT NULL
);


ALTER TABLE consesionario.cliente_potencial OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24985)
-- Name: clientes; Type: TABLE; Schema: consesionario; Owner: postgres
--

CREATE TABLE consesionario.clientes (
    id_cliente integer NOT NULL,
    nombre_completo character varying(100) NOT NULL,
    telefono character varying(12) NOT NULL,
    email character varying(30) NOT NULL
);


ALTER TABLE consesionario.clientes OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 25061)
-- Name: departamaneto_servicio; Type: TABLE; Schema: consesionario; Owner: postgres
--

CREATE TABLE consesionario.departamaneto_servicio (
    id_deps integer NOT NULL,
    id_empleado integer NOT NULL,
    codigo_servicio integer NOT NULL,
    horarios_trabajo time without time zone
);


ALTER TABLE consesionario.departamaneto_servicio OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 25051)
-- Name: departamento_ventas; Type: TABLE; Schema: consesionario; Owner: postgres
--

CREATE TABLE consesionario.departamento_ventas (
    id_dep integer NOT NULL,
    id_empleado integer NOT NULL,
    comisiones numeric(10,2) NOT NULL,
    num_ventas integer NOT NULL,
    fecha date
);


ALTER TABLE consesionario.departamento_ventas OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 25016)
-- Name: empleados; Type: TABLE; Schema: consesionario; Owner: postgres
--

CREATE TABLE consesionario.empleados (
    id_empleado integer NOT NULL,
    nombre character varying(50) NOT NULL,
    telefono character varying(12) NOT NULL,
    rol character varying(50) NOT NULL,
    fecha_contratacion date
);


ALTER TABLE consesionario.empleados OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 25021)
-- Name: historial_servicios; Type: TABLE; Schema: consesionario; Owner: postgres
--

CREATE TABLE consesionario.historial_servicios (
    codigo integer NOT NULL,
    id_vehiculo integer NOT NULL,
    id_empleado integer NOT NULL,
    fecha date NOT NULL,
    type consesionario.tipo_servicio NOT NULL,
    id_proveedor integer
);


ALTER TABLE consesionario.historial_servicios OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 25006)
-- Name: historial_venta; Type: TABLE; Schema: consesionario; Owner: postgres
--

CREATE TABLE consesionario.historial_venta (
    id_venta integer NOT NULL,
    valor numeric(10,2),
    id_cliente integer NOT NULL,
    id_vehiculo integer,
    fecha date
);


ALTER TABLE consesionario.historial_venta OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 25001)
-- Name: inventario; Type: TABLE; Schema: consesionario; Owner: postgres
--

CREATE TABLE consesionario.inventario (
    id integer NOT NULL,
    marca character varying(100) NOT NULL,
    modelo character varying(100) NOT NULL,
    "año" date NOT NULL,
    precio numeric(10,2) NOT NULL,
    type consesionario.estado NOT NULL
);


ALTER TABLE consesionario.inventario OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 25041)
-- Name: proveedores; Type: TABLE; Schema: consesionario; Owner: postgres
--

CREATE TABLE consesionario.proveedores (
    id_p integer NOT NULL,
    empresa character varying(40) NOT NULL
);


ALTER TABLE consesionario.proveedores OWNER TO postgres;

--
-- TOC entry 3499 (class 0 OID 25076)
-- Dependencies: 218
-- Data for Name: cliente_potencial; Type: TABLE DATA; Schema: consesionario; Owner: postgres
--

COPY consesionario.cliente_potencial (id_usuario, nombre, email, telefono, id_vehiculo) FROM stdin;
1	Paola Duran	Paoloita@gmail.com	3220555	1
2	Veronica paz	Veropaz@gmail.com	3220000	2
3	monica florez	monif@gmail.com	3220007	3
4	Geronimo pasante	Gerom@gmail.com	3220005	4
\.


--
-- TOC entry 3491 (class 0 OID 24985)
-- Dependencies: 210
-- Data for Name: clientes; Type: TABLE DATA; Schema: consesionario; Owner: postgres
--

COPY consesionario.clientes (id_cliente, nombre_completo, telefono, email) FROM stdin;
1	Marta celilia luz	31205554	Martica@gmail.com
2	Juan Carlos vargaz	320145588	Juanca2@gmail.com
3	Pedro jose de la cruz	35687123	Pedo@gmail.com
4	Manolo de la	31045554	manu@gmail.com
5	Marcos Jose lopes	310445555	Marcojo@gmail.com
6	Maria josefina pedraza	31004463	Mariajo@gmail.com
7	Andres torres	3144100	Andre@gmail.com
\.


--
-- TOC entry 3498 (class 0 OID 25061)
-- Dependencies: 217
-- Data for Name: departamaneto_servicio; Type: TABLE DATA; Schema: consesionario; Owner: postgres
--

COPY consesionario.departamaneto_servicio (id_deps, id_empleado, codigo_servicio, horarios_trabajo) FROM stdin;
1	1	1	07:00:00
2	2	2	12:00:00
3	3	3	08:00:00
\.


--
-- TOC entry 3497 (class 0 OID 25051)
-- Dependencies: 216
-- Data for Name: departamento_ventas; Type: TABLE DATA; Schema: consesionario; Owner: postgres
--

COPY consesionario.departamento_ventas (id_dep, id_empleado, comisiones, num_ventas, fecha) FROM stdin;
1	4	200000.00	5	2022-04-11
2	5	500000.00	6	2022-04-25
3	6	100000.00	1	2022-05-01
4	7	300000.00	3	2022-08-08
\.


--
-- TOC entry 3494 (class 0 OID 25016)
-- Dependencies: 213
-- Data for Name: empleados; Type: TABLE DATA; Schema: consesionario; Owner: postgres
--

COPY consesionario.empleados (id_empleado, nombre, telefono, rol, fecha_contratacion) FROM stdin;
4	Camila vera	3203333	mecanica	2020-05-19
5	Felipe pepile	3250011	mecanico	2022-08-02
6	Brayan dias	32001222	vendedor	2020-05-01
7	victor	314502224	vendedor	2021-09-22
1	Marco tulio ruiz	31204566	servicio al cliente	2020-05-13
2	Jose luis Vangegaz	314502222	servicio al cliente	2023-09-14
3	Manuel eduardo perez	31450278	servicio al cliente	2025-11-10
\.


--
-- TOC entry 3495 (class 0 OID 25021)
-- Dependencies: 214
-- Data for Name: historial_servicios; Type: TABLE DATA; Schema: consesionario; Owner: postgres
--

COPY consesionario.historial_servicios (codigo, id_vehiculo, id_empleado, fecha, type, id_proveedor) FROM stdin;
1	1	2	2020-08-04	mantenimiento	1
3	4	7	2022-01-04	mantenimiento	1
2	3	5	2021-07-04	reparacion	3
\.


--
-- TOC entry 3493 (class 0 OID 25006)
-- Dependencies: 212
-- Data for Name: historial_venta; Type: TABLE DATA; Schema: consesionario; Owner: postgres
--

COPY consesionario.historial_venta (id_venta, valor, id_cliente, id_vehiculo, fecha) FROM stdin;
1	400000.00	1	1	2020-05-08
2	400000.00	2	2	2022-04-11
3	500000.00	3	3	2022-06-08
4	800000.00	4	4	2022-11-22
5	500000.00	2	1	2022-05-05
6	850000.00	4	2	2022-05-05
7	360000.00	4	6	2022-05-05
8	360000.00	2	6	2022-05-05
\.


--
-- TOC entry 3492 (class 0 OID 25001)
-- Dependencies: 211
-- Data for Name: inventario; Type: TABLE DATA; Schema: consesionario; Owner: postgres
--

COPY consesionario.inventario (id, marca, modelo, "año", precio, type) FROM stdin;
1	Nissan	Y9p	2008-05-02	500000.00	nuevo
2	Mazda	KW2	2000-07-04	850000.00	nuevo
3	Mazda	KW2	2000-07-04	850000.00	nuevo
4	kia	Pikanto	2020-12-20	980000.00	nuevo
5	tesla	V8	2025-05-16	150000.00	usado
6	cheverlote	h20	2014-08-30	360000.00	usado
7	Ferrari	KV9	1900-01-22	850000.00	usado
\.


--
-- TOC entry 3496 (class 0 OID 25041)
-- Dependencies: 215
-- Data for Name: proveedores; Type: TABLE DATA; Schema: consesionario; Owner: postgres
--

COPY consesionario.proveedores (id_p, empresa) FROM stdin;
1	balvunas
2	toyota reparaciones
3	La 200
4	Taller nissan
5	Todo lujos
\.


--
-- TOC entry 3342 (class 2606 OID 25080)
-- Name: cliente_potencial cliente_potencial_pkey; Type: CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.cliente_potencial
    ADD CONSTRAINT cliente_potencial_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 3326 (class 2606 OID 24989)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);


--
-- TOC entry 3340 (class 2606 OID 25065)
-- Name: departamaneto_servicio departamaneto_servicio_pkey; Type: CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.departamaneto_servicio
    ADD CONSTRAINT departamaneto_servicio_pkey PRIMARY KEY (id_deps);


--
-- TOC entry 3338 (class 2606 OID 25055)
-- Name: departamento_ventas departamento_ventas_pkey; Type: CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.departamento_ventas
    ADD CONSTRAINT departamento_ventas_pkey PRIMARY KEY (id_dep);


--
-- TOC entry 3332 (class 2606 OID 25020)
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);


--
-- TOC entry 3334 (class 2606 OID 25025)
-- Name: historial_servicios historial_servicios_pkey; Type: CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.historial_servicios
    ADD CONSTRAINT historial_servicios_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3330 (class 2606 OID 25010)
-- Name: historial_venta historial_venta_pkey; Type: CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.historial_venta
    ADD CONSTRAINT historial_venta_pkey PRIMARY KEY (id_venta);


--
-- TOC entry 3328 (class 2606 OID 25005)
-- Name: inventario inventario_pkey; Type: CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id);


--
-- TOC entry 3336 (class 2606 OID 25045)
-- Name: proveedores proveedores_pkey; Type: CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id_p);


--
-- TOC entry 3351 (class 2606 OID 25081)
-- Name: cliente_potencial cliente_potencial_id_vehiculo_fkey; Type: FK CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.cliente_potencial
    ADD CONSTRAINT cliente_potencial_id_vehiculo_fkey FOREIGN KEY (id_vehiculo) REFERENCES consesionario.inventario(id);


--
-- TOC entry 3350 (class 2606 OID 25071)
-- Name: departamaneto_servicio departamaneto_servicio_codigo_servicio_fkey; Type: FK CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.departamaneto_servicio
    ADD CONSTRAINT departamaneto_servicio_codigo_servicio_fkey FOREIGN KEY (codigo_servicio) REFERENCES consesionario.historial_servicios(codigo);


--
-- TOC entry 3349 (class 2606 OID 25066)
-- Name: departamaneto_servicio departamaneto_servicio_id_empleado_fkey; Type: FK CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.departamaneto_servicio
    ADD CONSTRAINT departamaneto_servicio_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES consesionario.empleados(id_empleado);


--
-- TOC entry 3348 (class 2606 OID 25056)
-- Name: departamento_ventas departamento_ventas_id_empleado_fkey; Type: FK CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.departamento_ventas
    ADD CONSTRAINT departamento_ventas_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES consesionario.empleados(id_empleado);


--
-- TOC entry 3346 (class 2606 OID 25031)
-- Name: historial_servicios historial_servicios_id_empleado_fkey; Type: FK CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.historial_servicios
    ADD CONSTRAINT historial_servicios_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES consesionario.empleados(id_empleado);


--
-- TOC entry 3347 (class 2606 OID 25091)
-- Name: historial_servicios historial_servicios_id_proveedor_fkey; Type: FK CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.historial_servicios
    ADD CONSTRAINT historial_servicios_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES consesionario.proveedores(id_p);


--
-- TOC entry 3345 (class 2606 OID 25026)
-- Name: historial_servicios historial_servicios_id_vehiculo_fkey; Type: FK CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.historial_servicios
    ADD CONSTRAINT historial_servicios_id_vehiculo_fkey FOREIGN KEY (id_vehiculo) REFERENCES consesionario.inventario(id);


--
-- TOC entry 3343 (class 2606 OID 25011)
-- Name: historial_venta historial_venta_id_cliente_fkey; Type: FK CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.historial_venta
    ADD CONSTRAINT historial_venta_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES consesionario.clientes(id_cliente);


--
-- TOC entry 3344 (class 2606 OID 25086)
-- Name: historial_venta historial_venta_id_vehiculo_fkey; Type: FK CONSTRAINT; Schema: consesionario; Owner: postgres
--

ALTER TABLE ONLY consesionario.historial_venta
    ADD CONSTRAINT historial_venta_id_vehiculo_fkey FOREIGN KEY (id_vehiculo) REFERENCES consesionario.inventario(id);


-- Completed on 2026-07-01 19:21:48 -05

--
-- PostgreSQL database dump complete
--

\unrestrict rJPh6o7zGwX9rAofcArlNicuF2kJUBAhIQJndVE8qZ6kUlcC7q8thyWOl28K4bv

-- Completed on 2026-07-01 19:21:48 -05

--
-- PostgreSQL database cluster dump complete
--

