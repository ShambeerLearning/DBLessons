--
-- PostgreSQL database dump
--

-- Dumped from database version 16.5
-- Dumped by pg_dump version 16.5

-- Started on 2025-04-10 14:23:10

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4810 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 17000)
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    clients_id bigint NOT NULL,
    clients_name character varying NOT NULL,
    clients_number character varying NOT NULL,
    clients_email character varying NOT NULL
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16999)
-- Name: cleints_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cleints_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cleints_clients_id_seq OWNER TO postgres;

--
-- TOC entry 4811 (class 0 OID 0)
-- Dependencies: 217
-- Name: cleints_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cleints_clients_id_seq OWNED BY public.clients.clients_id;


--
-- TOC entry 216 (class 1259 OID 16991)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    products_id bigint NOT NULL,
    products_name character varying NOT NULL,
    products_description text,
    products_price character varying NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16990)
-- Name: products_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_products_id_seq OWNER TO postgres;

--
-- TOC entry 4812 (class 0 OID 0)
-- Dependencies: 215
-- Name: products_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_products_id_seq OWNED BY public.products.products_id;


--
-- TOC entry 220 (class 1259 OID 17009)
-- Name: purchases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchases (
    purchases_id bigint NOT NULL,
    purchases_clients bigint NOT NULL,
    purchases_products bigint NOT NULL,
    purchases_price bigint NOT NULL
);


ALTER TABLE public.purchases OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17008)
-- Name: purchases_purchases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.purchases_purchases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.purchases_purchases_id_seq OWNER TO postgres;

--
-- TOC entry 4813 (class 0 OID 0)
-- Dependencies: 219
-- Name: purchases_purchases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.purchases_purchases_id_seq OWNED BY public.purchases.purchases_id;


--
-- TOC entry 4645 (class 2604 OID 17003)
-- Name: clients clients_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN clients_id SET DEFAULT nextval('public.cleints_clients_id_seq'::regclass);


--
-- TOC entry 4644 (class 2604 OID 16994)
-- Name: products products_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN products_id SET DEFAULT nextval('public.products_products_id_seq'::regclass);


--
-- TOC entry 4646 (class 2604 OID 17012)
-- Name: purchases purchases_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases ALTER COLUMN purchases_id SET DEFAULT nextval('public.purchases_purchases_id_seq'::regclass);


--
-- TOC entry 4802 (class 0 OID 17000)
-- Dependencies: 218
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4800 (class 0 OID 16991)
-- Dependencies: 216
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4804 (class 0 OID 17009)
-- Dependencies: 220
-- Data for Name: purchases; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4814 (class 0 OID 0)
-- Dependencies: 217
-- Name: cleints_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cleints_clients_id_seq', 1, false);


--
-- TOC entry 4815 (class 0 OID 0)
-- Dependencies: 215
-- Name: products_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_products_id_seq', 1, false);


--
-- TOC entry 4816 (class 0 OID 0)
-- Dependencies: 219
-- Name: purchases_purchases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchases_purchases_id_seq', 1, false);


--
-- TOC entry 4650 (class 2606 OID 17007)
-- Name: clients cleints_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT cleints_pk PRIMARY KEY (clients_id);


--
-- TOC entry 4648 (class 2606 OID 16998)
-- Name: products product_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_pk PRIMARY KEY (products_id);


--
-- TOC entry 4652 (class 2606 OID 17014)
-- Name: purchases purchases_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_pk PRIMARY KEY (purchases_id);


--
-- TOC entry 4653 (class 2606 OID 17020)
-- Name: purchases purchases_cleints_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_cleints_fk FOREIGN KEY (purchases_clients) REFERENCES public.clients(clients_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4654 (class 2606 OID 17015)
-- Name: purchases purchases_products_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_products_fk FOREIGN KEY (purchases_products) REFERENCES public.products(products_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4655 (class 2606 OID 17025)
-- Name: purchases purchases_products_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_products_fk_1 FOREIGN KEY (purchases_price) REFERENCES public.products(products_id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2025-04-10 14:23:10

--
-- PostgreSQL database dump complete
--

