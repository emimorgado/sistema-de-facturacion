--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2023-10-27 17:55:47

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

DROP DATABASE IF EXISTS postgres;
--
-- TOC entry 3378 (class 1262 OID 5)
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 3378
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 2 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 32803)
-- Name: Cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cliente" (
    id_cliente integer NOT NULL,
    "Nombre" "char" NOT NULL,
    "Apellido" "char" NOT NULL,
    "Cedula" integer NOT NULL,
    "Direccion" "char" NOT NULL,
    "Telefono" integer NOT NULL
);


ALTER TABLE public."Cliente" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 32802)
-- Name: Cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Cliente_id_cliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Cliente_id_cliente_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 222
-- Name: Cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Cliente_id_cliente_seq" OWNED BY public."Cliente".id_cliente;


--
-- TOC entry 219 (class 1259 OID 32778)
-- Name: Factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Factura" (
    id_factura integer NOT NULL,
    "Razon-social" integer NOT NULL,
    "Fecha" date NOT NULL,
    id_cliente integer NOT NULL,
    "Nombre-cliente" "char" NOT NULL,
    "Apellido-cliente" "char" NOT NULL,
    "Cedula-cliente" integer NOT NULL,
    id_producto integer NOT NULL,
    "Monto-producto" "char" NOT NULL,
    "Total-factura" "char" NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public."Factura" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 32816)
-- Name: Factura-Productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Factura-Productos" (
    id_factura integer NOT NULL,
    id_producto integer NOT NULL
);


ALTER TABLE public."Factura-Productos" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 32814)
-- Name: Factura-Productos_id_factura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Factura-Productos_id_factura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Factura-Productos_id_factura_seq" OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 224
-- Name: Factura-Productos_id_factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Factura-Productos_id_factura_seq" OWNED BY public."Factura-Productos".id_factura;


--
-- TOC entry 225 (class 1259 OID 32815)
-- Name: Factura-Productos_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Factura-Productos_id_producto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Factura-Productos_id_producto_seq" OWNER TO postgres;

--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 225
-- Name: Factura-Productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Factura-Productos_id_producto_seq" OWNED BY public."Factura-Productos".id_producto;


--
-- TOC entry 218 (class 1259 OID 32777)
-- Name: Factura_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Factura_id_cliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Factura_id_cliente_seq" OWNER TO postgres;

--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 218
-- Name: Factura_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Factura_id_cliente_seq" OWNED BY public."Factura".id_cliente;


--
-- TOC entry 217 (class 1259 OID 32776)
-- Name: Factura_id_factura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Factura_id_factura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Factura_id_factura_seq" OWNER TO postgres;

--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 217
-- Name: Factura_id_factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Factura_id_factura_seq" OWNED BY public."Factura".id_factura;


--
-- TOC entry 227 (class 1259 OID 32842)
-- Name: Factura_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Factura_id_usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Factura_id_usuario_seq" OWNER TO postgres;

--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 227
-- Name: Factura_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Factura_id_usuario_seq" OWNED BY public."Factura".id_usuario;


--
-- TOC entry 221 (class 1259 OID 32796)
-- Name: Producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Producto" (
    id_producto integer NOT NULL,
    "Nombre" "char" NOT NULL,
    "Cantidad" integer NOT NULL,
    "Precio" integer NOT NULL
);


ALTER TABLE public."Producto" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 32795)
-- Name: Producto_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Producto_id_producto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Producto_id_producto_seq" OWNER TO postgres;

--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 220
-- Name: Producto_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Producto_id_producto_seq" OWNED BY public."Producto".id_producto;


--
-- TOC entry 216 (class 1259 OID 32770)
-- Name: Usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario" (
    id_usuario integer NOT NULL,
    "Nombre" "char" NOT NULL,
    "Apellido" "char" NOT NULL,
    "Cedula" integer NOT NULL,
    "Telefono" integer
);


ALTER TABLE public."Usuario" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 32769)
-- Name: Usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Usuario_id_usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Usuario_id_usuario_seq" OWNER TO postgres;

--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 215
-- Name: Usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Usuario_id_usuario_seq" OWNED BY public."Usuario".id_usuario;


--
-- TOC entry 3202 (class 2604 OID 32806)
-- Name: Cliente id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cliente" ALTER COLUMN id_cliente SET DEFAULT nextval('public."Cliente_id_cliente_seq"'::regclass);


--
-- TOC entry 3198 (class 2604 OID 32781)
-- Name: Factura id_factura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Factura" ALTER COLUMN id_factura SET DEFAULT nextval('public."Factura_id_factura_seq"'::regclass);


--
-- TOC entry 3199 (class 2604 OID 32782)
-- Name: Factura id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Factura" ALTER COLUMN id_cliente SET DEFAULT nextval('public."Factura_id_cliente_seq"'::regclass);


--
-- TOC entry 3200 (class 2604 OID 32843)
-- Name: Factura id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Factura" ALTER COLUMN id_usuario SET DEFAULT nextval('public."Factura_id_usuario_seq"'::regclass);


--
-- TOC entry 3203 (class 2604 OID 32819)
-- Name: Factura-Productos id_factura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Factura-Productos" ALTER COLUMN id_factura SET DEFAULT nextval('public."Factura-Productos_id_factura_seq"'::regclass);


--
-- TOC entry 3204 (class 2604 OID 32820)
-- Name: Factura-Productos id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Factura-Productos" ALTER COLUMN id_producto SET DEFAULT nextval('public."Factura-Productos_id_producto_seq"'::regclass);


--
-- TOC entry 3201 (class 2604 OID 32799)
-- Name: Producto id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Producto" ALTER COLUMN id_producto SET DEFAULT nextval('public."Producto_id_producto_seq"'::regclass);


--
-- TOC entry 3197 (class 2604 OID 32773)
-- Name: Usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario" ALTER COLUMN id_usuario SET DEFAULT nextval('public."Usuario_id_usuario_seq"'::regclass);


--
-- TOC entry 3368 (class 0 OID 32803)
-- Dependencies: 223
-- Data for Name: Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3364 (class 0 OID 32778)
-- Dependencies: 219
-- Data for Name: Factura; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3371 (class 0 OID 32816)
-- Dependencies: 226
-- Data for Name: Factura-Productos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3366 (class 0 OID 32796)
-- Dependencies: 221
-- Data for Name: Producto; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3361 (class 0 OID 32770)
-- Dependencies: 216
-- Data for Name: Usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 222
-- Name: Cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Cliente_id_cliente_seq"', 1, false);


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 224
-- Name: Factura-Productos_id_factura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Factura-Productos_id_factura_seq"', 1, false);


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 225
-- Name: Factura-Productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Factura-Productos_id_producto_seq"', 1, false);


--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 218
-- Name: Factura_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Factura_id_cliente_seq"', 1, false);


--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 217
-- Name: Factura_id_factura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Factura_id_factura_seq"', 1, false);


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 227
-- Name: Factura_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Factura_id_usuario_seq"', 1, false);


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 220
-- Name: Producto_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Producto_id_producto_seq"', 1, false);


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 215
-- Name: Usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Usuario_id_usuario_seq"', 1, false);


--
-- TOC entry 3213 (class 2606 OID 32808)
-- Name: Cliente Cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cliente"
    ADD CONSTRAINT "Cliente_pkey" PRIMARY KEY (id_cliente);


--
-- TOC entry 3208 (class 2606 OID 32784)
-- Name: Factura Factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Factura"
    ADD CONSTRAINT "Factura_pkey" PRIMARY KEY (id_factura);


--
-- TOC entry 3211 (class 2606 OID 32801)
-- Name: Producto Producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Producto"
    ADD CONSTRAINT "Producto_pkey" PRIMARY KEY (id_producto);


--
-- TOC entry 3206 (class 2606 OID 32775)
-- Name: Usuario Usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY (id_usuario);


--
-- TOC entry 3209 (class 1259 OID 32841)
-- Name: fki_id_cliente; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_cliente ON public."Factura" USING btree (id_cliente);


--
-- TOC entry 3214 (class 2606 OID 32836)
-- Name: Factura id_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Factura"
    ADD CONSTRAINT id_cliente FOREIGN KEY (id_cliente) REFERENCES public."Cliente"(id_cliente);


--
-- TOC entry 3216 (class 2606 OID 32821)
-- Name: Factura-Productos id_factura; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Factura-Productos"
    ADD CONSTRAINT id_factura FOREIGN KEY (id_factura) REFERENCES public."Factura"(id_factura);


--
-- TOC entry 3217 (class 2606 OID 32826)
-- Name: Factura-Productos id_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Factura-Productos"
    ADD CONSTRAINT id_producto FOREIGN KEY (id_producto) REFERENCES public."Producto"(id_producto);


--
-- TOC entry 3215 (class 2606 OID 32849)
-- Name: Factura id_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Factura"
    ADD CONSTRAINT id_usuario FOREIGN KEY (id_usuario) REFERENCES public."Usuario"(id_usuario) NOT VALID;


-- Completed on 2023-10-27 17:55:47

--
-- PostgreSQL database dump complete
--

