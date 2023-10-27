--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2023-09-30 23:00:49

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

DROP DATABASE IF EXISTS db_test;
--
-- TOC entry 3344 (class 1262 OID 16398)
-- Name: db_test; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db_test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';


ALTER DATABASE db_test OWNER TO postgres;

\connect db_test

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 24786)
-- Name: Cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cliente" (
    id_cliente character varying NOT NULL,
    "Nombre" character varying NOT NULL,
    "Apellido" character varying NOT NULL,
    "Cédula" character varying NOT NULL,
    "Número de teléfono" character varying NOT NULL,
    "Dirección" character varying NOT NULL
);


ALTER TABLE public."Cliente" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24599)
-- Name: Factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Factura" (
    id character varying NOT NULL,
    "Número de factura" character varying NOT NULL,
    "Razón Social" character varying NOT NULL,
    id_cliente character varying NOT NULL,
    "Fecha" character varying NOT NULL,
    "Nombre cliente" character varying NOT NULL,
    "Apellido cliente" character varying NOT NULL,
    "Cédula cliente" character varying NOT NULL,
    id_producto character varying NOT NULL,
    "Monto" character varying,
    "IVA" character varying NOT NULL,
    "Total" character varying
);


ALTER TABLE public."Factura" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24588)
-- Name: Producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Producto" (
    id character varying NOT NULL,
    "Nombre" character varying NOT NULL,
    "Precio" character varying NOT NULL,
    "Fecha de caducidad" character varying
);


ALTER TABLE public."Producto" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24576)
-- Name: Usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario" (
    id character varying NOT NULL,
    "Nombre" character varying NOT NULL,
    "Apellido" character varying NOT NULL,
    "Cédula" character varying NOT NULL,
    "Número de Teléfono" character varying NOT NULL,
    "Edad" character varying
);


ALTER TABLE public."Usuario" OWNER TO postgres;

--
-- TOC entry 3338 (class 0 OID 24786)
-- Dependencies: 217
-- Data for Name: Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3337 (class 0 OID 24599)
-- Dependencies: 216
-- Data for Name: Factura; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3336 (class 0 OID 24588)
-- Dependencies: 215
-- Data for Name: Producto; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3335 (class 0 OID 24576)
-- Dependencies: 214
-- Data for Name: Usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3187 (class 2606 OID 24718)
-- Name: Producto Producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Producto"
    ADD CONSTRAINT "Producto_pkey" PRIMARY KEY (id);


--
-- TOC entry 3191 (class 2606 OID 24792)
-- Name: Cliente id_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cliente"
    ADD CONSTRAINT id_cliente PRIMARY KEY (id_cliente);


--
-- TOC entry 3189 (class 2606 OID 24655)
-- Name: Factura id_factura; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Factura"
    ADD CONSTRAINT id_factura PRIMARY KEY ("Número de factura", id);


--
-- TOC entry 3185 (class 2606 OID 24746)
-- Name: Usuario id_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT id_usuario PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 24793)
-- Name: Usuario fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id) REFERENCES public."Cliente"(id_cliente) NOT VALID;


-- Completed on 2023-09-30 23:00:49

--
-- PostgreSQL database dump complete
--

