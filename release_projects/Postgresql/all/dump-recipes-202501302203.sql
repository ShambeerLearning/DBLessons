--
-- PostgreSQL database dump
--

-- Dumped from database version 16.5
-- Dumped by pg_dump version 16.5

-- Started on 2025-01-30 22:03:25

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
-- TOC entry 4787 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16470)
-- Name: recipes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes (
    recipes_id bigint NOT NULL,
    recipes_category character varying,
    recipes_name character varying NOT NULL,
    recipes_ingredients text NOT NULL,
    recipes_recipe text NOT NULL,
    recipes_image bytea
);


ALTER TABLE public.recipes OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16469)
-- Name: recipes_recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.recipes_recipes_id_seq OWNER TO postgres;

--
-- TOC entry 4788 (class 0 OID 0)
-- Dependencies: 215
-- Name: recipes_recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_recipes_id_seq OWNED BY public.recipes.recipes_id;


--
-- TOC entry 4634 (class 2604 OID 16473)
-- Name: recipes recipes_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes ALTER COLUMN recipes_id SET DEFAULT nextval('public.recipes_recipes_id_seq'::regclass);


--
-- TOC entry 4781 (class 0 OID 16470)
-- Dependencies: 216
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes (recipes_id, recipes_category, recipes_name, recipes_ingredients, recipes_recipe, recipes_image) FROM stdin;
\.


--
-- TOC entry 4789 (class 0 OID 0)
-- Dependencies: 215
-- Name: recipes_recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_recipes_id_seq', 1, false);


--
-- TOC entry 4636 (class 2606 OID 16477)
-- Name: recipes recipes_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pk PRIMARY KEY (recipes_id);


-- Completed on 2025-01-30 22:03:25

--
-- PostgreSQL database dump complete
--

