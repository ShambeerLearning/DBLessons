--
-- PostgreSQL database dump
--

-- Dumped from database version 16.5
-- Dumped by pg_dump version 16.5

-- Started on 2025-03-25 18:13:18

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
-- TOC entry 4881 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 230 (class 1259 OID 16782)
-- Name: body_pc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.body_pc (
    body_id bigint NOT NULL,
    body_name character varying NOT NULL,
    body_image_path character varying NOT NULL,
    body_standart_siz character varying NOT NULL,
    body_form_factor_mb character varying NOT NULL,
    body_form_factor_pu character varying NOT NULL,
    body_max_lenght_gpu integer NOT NULL,
    body_max_height_gpu integer NOT NULL,
    body_max_height_cl integer NOT NULL,
    body_max_num_3_5_sata integer NOT NULL,
    body_max_num_2_5_sata integer NOT NULL,
    body_link_all_specifications character varying NOT NULL
);


ALTER TABLE public.body_pc OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16781)
-- Name: body_pc_body_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.body_pc_body_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.body_pc_body_id_seq OWNER TO postgres;

--
-- TOC entry 4882 (class 0 OID 0)
-- Dependencies: 229
-- Name: body_pc_body_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.body_pc_body_id_seq OWNED BY public.body_pc.body_id;


--
-- TOC entry 233 (class 1259 OID 16835)
-- Name: conf_pc_storage_device; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conf_pc_storage_device (
    cpsd_id_conf bigint NOT NULL,
    cpsd_id_sd bigint NOT NULL
);


ALTER TABLE public.conf_pc_storage_device OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16792)
-- Name: configurator_pc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.configurator_pc (
    confpc_id bigint NOT NULL,
    confpc_name character varying NOT NULL,
    confpc_image_path character varying NOT NULL,
    confpc_cpu bigint NOT NULL,
    confpc_mb bigint NOT NULL,
    confpc_cl bigint NOT NULL,
    confpc_om bigint NOT NULL,
    confpc_gpu bigint NOT NULL,
    confpc_sd jsonb NOT NULL,
    confpc_pu bigint NOT NULL,
    confpc_body_pc bigint NOT NULL
);


ALTER TABLE public.configurator_pc OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16791)
-- Name: configurator_pc_confpc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.configurator_pc_confpc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.configurator_pc_confpc_id_seq OWNER TO postgres;

--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 231
-- Name: configurator_pc_confpc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.configurator_pc_confpc_id_seq OWNED BY public.configurator_pc.confpc_id;


--
-- TOC entry 216 (class 1259 OID 16712)
-- Name: cpu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cpu (
    cpu_id bigint NOT NULL,
    cpu_name character varying NOT NULL,
    cpu_image_path character varying NOT NULL,
    cpu_socket character varying NOT NULL,
    cpu_core character varying NOT NULL,
    cpu_type_opmemory jsonb NOT NULL,
    cpu_supported_max_size_opmemory integer NOT NULL,
    cpu_supported_max_channels_opmemory integer NOT NULL,
    cpu_supported_max_rate_opmemory integer NOT NULL,
    cpu_max_tdp integer NOT NULL,
    cpu_link_all_specifications character varying NOT NULL
);


ALTER TABLE public.cpu OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16711)
-- Name: cpu_cpu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cpu_cpu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cpu_cpu_id_seq OWNER TO postgres;

--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 215
-- Name: cpu_cpu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cpu_cpu_id_seq OWNED BY public.cpu.cpu_id;


--
-- TOC entry 224 (class 1259 OID 16755)
-- Name: gpu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gpu (
    gpu_id bigint NOT NULL,
    gpu_name character varying NOT NULL,
    gpu_image_path character varying NOT NULL,
    gpu_rate integer NOT NULL,
    gpu_type_memory character varying NOT NULL,
    gpu_size_memory integer NOT NULL,
    gpu_quantity_hdmi integer NOT NULL,
    gpu_quantity_display_port integer NOT NULL,
    gpu_quantity_vga integer NOT NULL,
    gpu_connection_interface character varying NOT NULL,
    gpu_form_factor character varying NOT NULL,
    gpu_additional_power_connectors character varying NOT NULL,
    gpu_pu_rec_power integer NOT NULL,
    gpu_length integer NOT NULL,
    gpu_width integer NOT NULL,
    gpu_link_all_specifications character varying NOT NULL
);


ALTER TABLE public.gpu OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16754)
-- Name: gpu_gpu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gpu_gpu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gpu_gpu_id_seq OWNER TO postgres;

--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 223
-- Name: gpu_gpu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gpu_gpu_id_seq OWNED BY public.gpu.gpu_id;


--
-- TOC entry 218 (class 1259 OID 16721)
-- Name: motherboard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.motherboard (
    mb_id bigint NOT NULL,
    mb_name character varying NOT NULL,
    mb_image_path character varying NOT NULL,
    mb_socket character varying NOT NULL,
    mb_chipset character varying NOT NULL,
    mb_cpu_core jsonb NOT NULL,
    mb_number_of_slots_opmemory integer NOT NULL,
    mb_type_opmemory character varying NOT NULL,
    mb_supported_max_rate_opmemory integer NOT NULL,
    mb_supported_max_channels_opmemory integer NOT NULL,
    mb_supported_max_size_opmemory integer NOT NULL,
    mb_version_pcie character varying NOT NULL,
    mb_slot_pcie_x_16 character varying NOT NULL,
    mb_m2_support character varying NOT NULL,
    mb_number_of_connectors_m2 integer NOT NULL,
    mb_number_of_connectors_sata integer NOT NULL,
    mb_link_all_specifications character varying NOT NULL
);


ALTER TABLE public.motherboard OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16720)
-- Name: motherboard_mb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.motherboard_mb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.motherboard_mb_id_seq OWNER TO postgres;

--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 217
-- Name: motherboard_mb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.motherboard_mb_id_seq OWNED BY public.motherboard.mb_id;


--
-- TOC entry 222 (class 1259 OID 16746)
-- Name: operational_memory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.operational_memory (
    om_id bigint NOT NULL,
    om_name character varying NOT NULL,
    om_image_path character varying NOT NULL,
    om_type character varying NOT NULL,
    om_size integer NOT NULL,
    om_rate integer NOT NULL,
    om_link_all_specifications character varying NOT NULL
);


ALTER TABLE public.operational_memory OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16745)
-- Name: operational_memory_om_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.operational_memory_om_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.operational_memory_om_id_seq OWNER TO postgres;

--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 221
-- Name: operational_memory_om_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.operational_memory_om_id_seq OWNED BY public.operational_memory.om_id;


--
-- TOC entry 228 (class 1259 OID 16773)
-- Name: power_unit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.power_unit (
    pu_id bigint NOT NULL,
    pu_name character varying NOT NULL,
    pu_image_path character varying NOT NULL,
    pu_power integer NOT NULL,
    pu_form_factor character varying NOT NULL,
    pu_main_power_connector character varying NOT NULL,
    pu_power_connector_for_cpu character varying NOT NULL,
    pu_power_connector_for_gpu_pcie character varying NOT NULL,
    pu_number_of_connectors_sata integer NOT NULL,
    pu_link_all_specifications character varying NOT NULL
);


ALTER TABLE public.power_unit OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16772)
-- Name: power unit_pu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."power unit_pu_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."power unit_pu_id_seq" OWNER TO postgres;

--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 227
-- Name: power unit_pu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."power unit_pu_id_seq" OWNED BY public.power_unit.pu_id;


--
-- TOC entry 226 (class 1259 OID 16764)
-- Name: storage_device; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.storage_device (
    sd_id bigint NOT NULL,
    sd_name character varying NOT NULL,
    sd_image_path character varying NOT NULL,
    sd_type character varying NOT NULL,
    sd_size integer NOT NULL,
    sd_type_connection character varying NOT NULL,
    sd_transmission_speed integer NOT NULL,
    sd_link_all_specifications character varying NOT NULL
);


ALTER TABLE public.storage_device OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16763)
-- Name: storage_device_sd_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.storage_device_sd_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.storage_device_sd_id_seq OWNER TO postgres;

--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 225
-- Name: storage_device_sd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.storage_device_sd_id_seq OWNED BY public.storage_device.sd_id;


--
-- TOC entry 220 (class 1259 OID 16730)
-- Name: сooling; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."сooling" (
    cl_id bigint NOT NULL,
    cl_name character varying NOT NULL,
    cl_image_path character varying NOT NULL,
    cl_socket jsonb NOT NULL,
    cl_power_dissipation integer NOT NULL,
    cl_height integer NOT NULL,
    cl_link_all_specifications character varying NOT NULL
);


ALTER TABLE public."сooling" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16729)
-- Name: сooling_cl_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."сooling_cl_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."сooling_cl_id_seq" OWNER TO postgres;

--
-- TOC entry 4890 (class 0 OID 0)
-- Dependencies: 219
-- Name: сooling_cl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."сooling_cl_id_seq" OWNED BY public."сooling".cl_id;


--
-- TOC entry 4685 (class 2604 OID 16785)
-- Name: body_pc body_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.body_pc ALTER COLUMN body_id SET DEFAULT nextval('public.body_pc_body_id_seq'::regclass);


--
-- TOC entry 4686 (class 2604 OID 16795)
-- Name: configurator_pc confpc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configurator_pc ALTER COLUMN confpc_id SET DEFAULT nextval('public.configurator_pc_confpc_id_seq'::regclass);


--
-- TOC entry 4678 (class 2604 OID 16715)
-- Name: cpu cpu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cpu ALTER COLUMN cpu_id SET DEFAULT nextval('public.cpu_cpu_id_seq'::regclass);


--
-- TOC entry 4682 (class 2604 OID 16758)
-- Name: gpu gpu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gpu ALTER COLUMN gpu_id SET DEFAULT nextval('public.gpu_gpu_id_seq'::regclass);


--
-- TOC entry 4679 (class 2604 OID 16724)
-- Name: motherboard mb_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motherboard ALTER COLUMN mb_id SET DEFAULT nextval('public.motherboard_mb_id_seq'::regclass);


--
-- TOC entry 4681 (class 2604 OID 16749)
-- Name: operational_memory om_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operational_memory ALTER COLUMN om_id SET DEFAULT nextval('public.operational_memory_om_id_seq'::regclass);


--
-- TOC entry 4684 (class 2604 OID 16776)
-- Name: power_unit pu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.power_unit ALTER COLUMN pu_id SET DEFAULT nextval('public."power unit_pu_id_seq"'::regclass);


--
-- TOC entry 4683 (class 2604 OID 16767)
-- Name: storage_device sd_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storage_device ALTER COLUMN sd_id SET DEFAULT nextval('public.storage_device_sd_id_seq'::regclass);


--
-- TOC entry 4680 (class 2604 OID 16733)
-- Name: сooling cl_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."сooling" ALTER COLUMN cl_id SET DEFAULT nextval('public."сooling_cl_id_seq"'::regclass);


--
-- TOC entry 4872 (class 0 OID 16782)
-- Dependencies: 230
-- Data for Name: body_pc; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4875 (class 0 OID 16835)
-- Dependencies: 233
-- Data for Name: conf_pc_storage_device; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4874 (class 0 OID 16792)
-- Dependencies: 232
-- Data for Name: configurator_pc; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4858 (class 0 OID 16712)
-- Dependencies: 216
-- Data for Name: cpu; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4866 (class 0 OID 16755)
-- Dependencies: 224
-- Data for Name: gpu; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4860 (class 0 OID 16721)
-- Dependencies: 218
-- Data for Name: motherboard; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4864 (class 0 OID 16746)
-- Dependencies: 222
-- Data for Name: operational_memory; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4870 (class 0 OID 16773)
-- Dependencies: 228
-- Data for Name: power_unit; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4868 (class 0 OID 16764)
-- Dependencies: 226
-- Data for Name: storage_device; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4862 (class 0 OID 16730)
-- Dependencies: 220
-- Data for Name: сooling; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4891 (class 0 OID 0)
-- Dependencies: 229
-- Name: body_pc_body_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.body_pc_body_id_seq', 1, false);


--
-- TOC entry 4892 (class 0 OID 0)
-- Dependencies: 231
-- Name: configurator_pc_confpc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.configurator_pc_confpc_id_seq', 1, false);


--
-- TOC entry 4893 (class 0 OID 0)
-- Dependencies: 215
-- Name: cpu_cpu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cpu_cpu_id_seq', 1, false);


--
-- TOC entry 4894 (class 0 OID 0)
-- Dependencies: 223
-- Name: gpu_gpu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gpu_gpu_id_seq', 1, false);


--
-- TOC entry 4895 (class 0 OID 0)
-- Dependencies: 217
-- Name: motherboard_mb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.motherboard_mb_id_seq', 1, false);


--
-- TOC entry 4896 (class 0 OID 0)
-- Dependencies: 221
-- Name: operational_memory_om_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operational_memory_om_id_seq', 1, false);


--
-- TOC entry 4897 (class 0 OID 0)
-- Dependencies: 227
-- Name: power unit_pu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."power unit_pu_id_seq"', 1, false);


--
-- TOC entry 4898 (class 0 OID 0)
-- Dependencies: 225
-- Name: storage_device_sd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.storage_device_sd_id_seq', 1, false);


--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 219
-- Name: сooling_cl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."сooling_cl_id_seq"', 1, false);


--
-- TOC entry 4702 (class 2606 OID 16790)
-- Name: body_pc body_pc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.body_pc
    ADD CONSTRAINT body_pc_pk PRIMARY KEY (body_id);


--
-- TOC entry 4704 (class 2606 OID 16799)
-- Name: configurator_pc configurator_pc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configurator_pc
    ADD CONSTRAINT configurator_pc_pk PRIMARY KEY (confpc_id);


--
-- TOC entry 4688 (class 2606 OID 16719)
-- Name: cpu cpu_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cpu
    ADD CONSTRAINT cpu_pk PRIMARY KEY (cpu_id);


--
-- TOC entry 4696 (class 2606 OID 16762)
-- Name: gpu gpu_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gpu
    ADD CONSTRAINT gpu_pk PRIMARY KEY (gpu_id);


--
-- TOC entry 4690 (class 2606 OID 16728)
-- Name: motherboard motherboard_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motherboard
    ADD CONSTRAINT motherboard_pk PRIMARY KEY (mb_id);


--
-- TOC entry 4700 (class 2606 OID 16780)
-- Name: power_unit power_unit_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.power_unit
    ADD CONSTRAINT power_unit_pk PRIMARY KEY (pu_id);


--
-- TOC entry 4694 (class 2606 OID 16753)
-- Name: operational_memory ram_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operational_memory
    ADD CONSTRAINT ram_pk PRIMARY KEY (om_id);


--
-- TOC entry 4698 (class 2606 OID 16771)
-- Name: storage_device storage_device_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storage_device
    ADD CONSTRAINT storage_device_pk PRIMARY KEY (sd_id);


--
-- TOC entry 4692 (class 2606 OID 16737)
-- Name: сooling сooling_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."сooling"
    ADD CONSTRAINT "сooling_pk" PRIMARY KEY (cl_id);


--
-- TOC entry 4712 (class 2606 OID 16838)
-- Name: conf_pc_storage_device conf_pc_storage_device_configurator_pc_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conf_pc_storage_device
    ADD CONSTRAINT conf_pc_storage_device_configurator_pc_fk FOREIGN KEY (cpsd_id_conf) REFERENCES public.configurator_pc(confpc_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4713 (class 2606 OID 16843)
-- Name: conf_pc_storage_device conf_pc_storage_device_storage_device_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conf_pc_storage_device
    ADD CONSTRAINT conf_pc_storage_device_storage_device_fk FOREIGN KEY (cpsd_id_sd) REFERENCES public.storage_device(sd_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4705 (class 2606 OID 16830)
-- Name: configurator_pc configurator_pc_body_pc_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configurator_pc
    ADD CONSTRAINT configurator_pc_body_pc_fk FOREIGN KEY (confpc_pu) REFERENCES public.body_pc(body_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4706 (class 2606 OID 16800)
-- Name: configurator_pc configurator_pc_cpu_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configurator_pc
    ADD CONSTRAINT configurator_pc_cpu_fk FOREIGN KEY (confpc_cpu) REFERENCES public.cpu(cpu_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4707 (class 2606 OID 16820)
-- Name: configurator_pc configurator_pc_gpu_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configurator_pc
    ADD CONSTRAINT configurator_pc_gpu_fk FOREIGN KEY (confpc_gpu) REFERENCES public.gpu(gpu_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4708 (class 2606 OID 16805)
-- Name: configurator_pc configurator_pc_motherboard_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configurator_pc
    ADD CONSTRAINT configurator_pc_motherboard_fk FOREIGN KEY (confpc_mb) REFERENCES public.motherboard(mb_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4709 (class 2606 OID 16815)
-- Name: configurator_pc configurator_pc_operational_memory_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configurator_pc
    ADD CONSTRAINT configurator_pc_operational_memory_fk FOREIGN KEY (confpc_om) REFERENCES public.operational_memory(om_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4710 (class 2606 OID 16825)
-- Name: configurator_pc configurator_pc_power_unit_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configurator_pc
    ADD CONSTRAINT configurator_pc_power_unit_fk FOREIGN KEY (confpc_pu) REFERENCES public.power_unit(pu_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4711 (class 2606 OID 16810)
-- Name: configurator_pc configurator_pc_сooling_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configurator_pc
    ADD CONSTRAINT "configurator_pc_сooling_fk" FOREIGN KEY (confpc_cl) REFERENCES public."сooling"(cl_id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2025-03-25 18:13:18

--
-- PostgreSQL database dump complete
--

