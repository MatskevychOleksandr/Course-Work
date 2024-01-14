toc.dat                                                                                             0000600 0004000 0002000 00000017535 14550746013 0014457 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       ;    8                 |            oblik    13.12    13.12     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16414    oblik    DATABASE     b   CREATE DATABASE oblik WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE oblik;
                postgres    false         �            1259    16444 	   compaines    TABLE     d   CREATE TABLE public.compaines (
    id integer NOT NULL,
    company_name character varying(255)
);
    DROP TABLE public.compaines;
       public         heap    postgres    false         �            1259    16442    compaines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compaines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.compaines_id_seq;
       public          postgres    false    206         �           0    0    compaines_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.compaines_id_seq OWNED BY public.compaines.id;
          public          postgres    false    205         �            1259    16417 	   customers    TABLE     a   CREATE TABLE public.customers (
    id integer NOT NULL,
    cust_name character varying(255)
);
    DROP TABLE public.customers;
       public         heap    postgres    false         �            1259    16415    customers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public          postgres    false    201         �           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public          postgres    false    200         �            1259    16423    orders    TABLE     x   CREATE TABLE public.orders (
    order_number integer,
    product integer,
    amount integer,
    customer integer
);
    DROP TABLE public.orders;
       public         heap    postgres    false         �            1259    16433    software    TABLE     �   CREATE TABLE public.software (
    id integer NOT NULL,
    name character varying(255),
    type character varying(255),
    license character varying(255),
    capacity double precision,
    comp_id integer,
    price double precision
);
    DROP TABLE public.software;
       public         heap    postgres    false         �            1259    16431    software_id_seq    SEQUENCE     �   CREATE SEQUENCE public.software_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.software_id_seq;
       public          postgres    false    204         �           0    0    software_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.software_id_seq OWNED BY public.software.id;
          public          postgres    false    203         5           2604    16447    compaines id    DEFAULT     l   ALTER TABLE ONLY public.compaines ALTER COLUMN id SET DEFAULT nextval('public.compaines_id_seq'::regclass);
 ;   ALTER TABLE public.compaines ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    206    206         3           2604    16420    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201         4           2604    16436    software id    DEFAULT     j   ALTER TABLE ONLY public.software ALTER COLUMN id SET DEFAULT nextval('public.software_id_seq'::regclass);
 :   ALTER TABLE public.software ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203    204         �          0    16444 	   compaines 
   TABLE DATA           5   COPY public.compaines (id, company_name) FROM stdin;
    public          postgres    false    206       3015.dat �          0    16417 	   customers 
   TABLE DATA           2   COPY public.customers (id, cust_name) FROM stdin;
    public          postgres    false    201       3010.dat �          0    16423    orders 
   TABLE DATA           I   COPY public.orders (order_number, product, amount, customer) FROM stdin;
    public          postgres    false    202       3011.dat �          0    16433    software 
   TABLE DATA           U   COPY public.software (id, name, type, license, capacity, comp_id, price) FROM stdin;
    public          postgres    false    204       3013.dat �           0    0    compaines_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.compaines_id_seq', 1, false);
          public          postgres    false    205         �           0    0    customers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.customers_id_seq', 1, false);
          public          postgres    false    200         �           0    0    software_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.software_id_seq', 1, false);
          public          postgres    false    203         ;           2606    16449    compaines compaines_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.compaines
    ADD CONSTRAINT compaines_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.compaines DROP CONSTRAINT compaines_pkey;
       public            postgres    false    206         7           2606    16422    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    201         9           2606    16441    software software_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.software
    ADD CONSTRAINT software_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.software DROP CONSTRAINT software_pkey;
       public            postgres    false    204         <           2606    16426    orders orders_customer_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_fkey FOREIGN KEY (customer) REFERENCES public.customers(id);
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_customer_fkey;
       public          postgres    false    2871    201    202         =           2606    16455    orders orders_product_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_product_fkey FOREIGN KEY (product) REFERENCES public.software(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_product_fkey;
       public          postgres    false    202    2873    204         >           2606    16450    software software_comp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.software
    ADD CONSTRAINT software_comp_id_fkey FOREIGN KEY (comp_id) REFERENCES public.compaines(id);
 H   ALTER TABLE ONLY public.software DROP CONSTRAINT software_comp_id_fkey;
       public          postgres    false    204    2875    206                                                                                                                                                                           3015.dat                                                                                            0000600 0004000 0002000 00000000173 14550746013 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Microsoft
3	Mozilla
4	Google
5	Kaspersky
6	Adobe
7	Notepad
8	Apple
9	Tor
10	Brave
11	NVIDIA
12	Intel
13	HP
1	WinRAR
\.


                                                                                                                                                                                                                                                                                                                                                                                                     3010.dat                                                                                            0000600 0004000 0002000 00000000317 14550746013 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	National Technical University of Oil and Gas
2	King Daniels University
3	Precarpathian national university
4	Lviv Polytechnic National University
5	National Academy of the Security Service of Ukraine
\.


                                                                                                                                                                                                                                                                                                                 3011.dat                                                                                            0000600 0004000 0002000 00000000315 14550746013 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	10	50	1
2	1	40	1
3	3	15	1
4	2	10	1
5	12	10	2
6	1	20	2
7	7	30	2
8	11	11	2
9	2	20	2
10	8	12	3
11	10	150	3
12	3	50	3
13	1	30	4
14	2	30	4
15	9	15	4
16	7	30	4
17	10	300	5
18	7	200	5
19	3	100	5
20	8	30	5
\.


                                                                                                                                                                                                                                                                                                                   3013.dat                                                                                            0000600 0004000 0002000 00000001043 14550746013 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Adobe Photoshop	editor	proprietary	1200	6	40
3	WinRAR	utility\n	proprietary	4000	1	5
4	Visual Studio Code	editor	open source	298	2	0
5	Notepad++	editor	open source	109	7	0
6	Visual Studio	editor	proprietary	45	2	7
7	Google chrome	browser	proprietary	588	2	0
9	Mozilla Firefox	browser	open source	1005	3	0
12	Adobe Reader	editor	proprietary	4	6	10
11	FaceTime	communication	proprietary	658	8	0
8	Skype	communication	proprietary	963	2	0
2	Adobe Illustrator	editor\n	proprietary	450	6	24
10	Kaspersky antivirus	utility\n	proprietary	1123	5	31
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000015236 14550746013 0015400 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.12
-- Dumped by pg_dump version 13.12

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

DROP DATABASE oblik;
--
-- Name: oblik; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE oblik WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';


ALTER DATABASE oblik OWNER TO postgres;

\connect oblik

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
-- Name: compaines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compaines (
    id integer NOT NULL,
    company_name character varying(255)
);


ALTER TABLE public.compaines OWNER TO postgres;

--
-- Name: compaines_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compaines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compaines_id_seq OWNER TO postgres;

--
-- Name: compaines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compaines_id_seq OWNED BY public.compaines.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    cust_name character varying(255)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_number integer,
    product integer,
    amount integer,
    customer integer
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: software; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.software (
    id integer NOT NULL,
    name character varying(255),
    type character varying(255),
    license character varying(255),
    capacity double precision,
    comp_id integer,
    price double precision
);


ALTER TABLE public.software OWNER TO postgres;

--
-- Name: software_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.software_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.software_id_seq OWNER TO postgres;

--
-- Name: software_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.software_id_seq OWNED BY public.software.id;


--
-- Name: compaines id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compaines ALTER COLUMN id SET DEFAULT nextval('public.compaines_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: software id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.software ALTER COLUMN id SET DEFAULT nextval('public.software_id_seq'::regclass);


--
-- Data for Name: compaines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compaines (id, company_name) FROM stdin;
\.
COPY public.compaines (id, company_name) FROM '$$PATH$$/3015.dat';

--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, cust_name) FROM stdin;
\.
COPY public.customers (id, cust_name) FROM '$$PATH$$/3010.dat';

--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_number, product, amount, customer) FROM stdin;
\.
COPY public.orders (order_number, product, amount, customer) FROM '$$PATH$$/3011.dat';

--
-- Data for Name: software; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.software (id, name, type, license, capacity, comp_id, price) FROM stdin;
\.
COPY public.software (id, name, type, license, capacity, comp_id, price) FROM '$$PATH$$/3013.dat';

--
-- Name: compaines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compaines_id_seq', 1, false);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 1, false);


--
-- Name: software_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.software_id_seq', 1, false);


--
-- Name: compaines compaines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compaines
    ADD CONSTRAINT compaines_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: software software_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.software
    ADD CONSTRAINT software_pkey PRIMARY KEY (id);


--
-- Name: orders orders_customer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_fkey FOREIGN KEY (customer) REFERENCES public.customers(id);


--
-- Name: orders orders_product_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_product_fkey FOREIGN KEY (product) REFERENCES public.software(id);


--
-- Name: software software_comp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.software
    ADD CONSTRAINT software_comp_id_fkey FOREIGN KEY (comp_id) REFERENCES public.compaines(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  