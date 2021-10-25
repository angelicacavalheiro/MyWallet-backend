--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id integer NOT NULL,
    nome text,
    email text,
    senha text,
    confirma_senha text
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_seq OWNER TO postgres;

--
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- Name: movimento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movimento (
    id integer NOT NULL,
    valor numeric,
    entrada text,
    saida text,
    data text,
    descricao text,
    user_id integer
);


ALTER TABLE public.movimento OWNER TO postgres;

--
-- Name: movimento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movimento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movimento_id_seq OWNER TO postgres;

--
-- Name: movimento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movimento_id_seq OWNED BY public.movimento.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    user_id integer,
    token text
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- Name: movimento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movimento ALTER COLUMN id SET DEFAULT nextval('public.movimento_id_seq'::regclass);


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id, nome, email, senha, confirma_senha) FROM stdin;
1	jaum	qqrcoisa@gmail.com	$2b$10$sp86EH57aCv8TtjlAuBSfeAGuV2DxN3oBVM7GqVGxhlD4Vt3K6rbu	\N
2	jordan	qqrcoisa@gmail.com	$2b$10$xePhEypzbWzZiia.fMM21eQLL6kD8yfVAb5QuweOBGrM96hrF2Ndi	\N
3	jaum	qqrcoisa@gmail.com	$2b$10$JdLcuAPqaR1fJ5AME6CkO.tscDw8YgsZ6mci4ZQPtYHkUFpelB4VO	$2b$10$QnxySZOT.5yFzFCT5r.4Lutp0KXQlnBL3ophdzVriE2xmQEU0iQYe
4	jaum	qqrcoisa@gmail.com	$2b$10$pLAwy70G1ITMmXBw8sjXa.hqC4O70bQMap6/oaq6jSmQZcLpcNVNO	$2b$10$Uh7CBfCoEHaxnFm66qlyxelPWtCFHg.qyWIHkz.XRrfCcP.3y0WfK
5	teste	qqrcoisa@gmail.com	$2b$10$o9UdKOOxe5bCyOPgQdCQzOHCO3KdogVyZPQlvTP8iUnJLs99nb13O	$2b$10$jx/zUe9qz1B9l2tO6hH0l.6KdzQDUn/btnaMeQee9BYWTjXE81ztm
6	teste	qqa@gmail.com	$2b$10$bd8CGtUwcMkzKHrEFQLRvOhb7./5f66mf.GMYdFys7kGnxNcxI.2u	$2b$10$ZLziAShJxfN1KhNWjJmcuu61arGawDGgX.TAMWtNMrgODKcFjBST2
7	teste	qqa@l.com	$2b$10$nWdqyBv4f3GbUyAG.V569uazdiLDcRvtDh.cQKqPygOoeCpRvNht6	$2b$10$kh6DXBNDDEdwOBPxUYgiNeedDPnVcfjluyl1z11osdk7tYCN0hS82
8	teste	qqa@l.com	$2b$10$hpcBm.jGiTEn9AFEcBAHiOVEnXZBA8HTeSeiPcdStQyOHwK76eOtW	$2b$10$zoRSCPxzvM0aoyCsCre46eNOU2c95Pek1oxTsLvse.LYgNTyV1B32
9	angelica	angelica@gmail.com	$2b$10$K19f56fnM6ZjdU9tgIbIG.Ie4sYtGGR5.WwTaLN2EqPRmP/2Y4RK2	$2b$10$CXePrc3/K/0Pt2rHE8Dy9OtR7M.hllbE0L7tg5eQ./t8ha7iCx4Qq
10	angel	angel@gmail.com	$2b$10$0xMGXo8U8vxsm8THfiaGpeiGl.EkFODiHGNyKxL90OEHS4W2.Rm66	$2b$10$M23I1KqGuAYaxidHYupi5OC90uaXK7Q/2mHQp5JRIbu2mJSTPgYby
11	shrek	shrek@pantano.com	$2b$10$g9aCSuwstmPnWW2R7hHBteOOnnpJEbhkLVB8E48P9CvmqkKWQloD.	$2b$10$QfIvbsM4XIta/DQe8g2IA.CP0z5a2USxKLOcaspCR3rOLfwmSh/1C
12	Fiona	fiona@pantano.com	$2b$10$xDiugI1STBgrrwcffDdv7uvU0yqeakp/sZEqFHBOlwFIeWe0pQdTu	$2b$10$ZTbYrXBjsbOOJ1VUcJ5gtu.80aqkdErYzuNrlz8nEdB7TqsomnJiy
13	elenir	burro@pantano.com	$2b$10$NaztJkeGZ1czL7fjtN5T..TPRmxi6l5.I6eTE0UpiUrhtoQuD8NDG	$2b$10$OarWbsLLeDsJT2D2M8Cwjul.x01PPB0GfDuX3y0np4z2M.pCRSgF.
14	dragao	dragao@pantano.com	$2b$10$gOC5RXCltN8NqEKa.4cL5O6Svf3MZlmEDnISPbyK16gsOi8Ixeaty	$2b$10$frTmpKvHP9QAduIs99pAp.7Tbx8wM1Z8AmY40xUqtrFSOgvySmK/S
15	paulo	paulo@pantano.com	$2b$10$0Uv6N.fcos0P3/SA7ftN3uaJ1nIs8BdI6/HBps3HtnQ..9XyUVSS.	$2b$10$aOYQ6Vi8TRB12KA3FjUpyODTkHbSnQS0jiRkw.9LQ8neXiet9e5hW
16	jorel	jorel@pantano.com	$2b$10$KBdiuCM9gsOtpO04jDHnNuUFG.Nk3kWS/ow5y./rIyHOz/P.IRjQG	$2b$10$kz1U9ylstTPL29ptytLIJugye/MgCcRMeeFyuZ2sL6KlRPlBub4nW
17	vovo	vovo@pantano.com	$2b$10$Ga9gcJERy9YP8BQ/lzJVTuH4qSKYdEg8K49yHEwDf3X2gkqfU9r1m	$2b$10$5/MDWoVSQ0AdB9KDlY6BFOsw7OYENmyvgYUWDSz6WhBVuk9WzOyNm
18	angelica rodrigues	adsf@pantano.com	$2b$10$cDUv/7O9/e6cAxAomCmK/e/5.emWQ2WbOe8VV/THKGQYD7oPlJSMu	$2b$10$yrvydBb.KdNH9HRu3ZY9ruyoeoRbhzQbeWUFrzBpfN1rIkYNWeEYK
19	ewdr	dsfdsaf@pantano.com	$2b$10$5fM8qNlgM5MpgW7XnuFQ8elObCDlQ6UeNOgYef19kmI.Ixi/0kk1C	$2b$10$k2f4C0RUGjV1ev.SZYf1FOn/BB/if2uMIpS8wQUSWNTJr.bwMWpH.
30	angelica	angel@angel.com	$2b$10$ZcSrTY.til9Vrxn7nb4ANuMS1y5FD./mXkz.TcezoCExcKV1UI8se	$2b$10$qxyEd5jMadhWAxv4QKqBIuaZqRkOYZbjTKPeachGem9Dpk1PLsOMO
31	angelica	angel@angel.com	$2b$10$Cf1NN5cQBirh8CXdDj1LBufdfbyJFGKz40bb8EWBUT..QHeqvcj5y	$2b$10$SPULFV3nHc7ReYuU8QEr6OceFp5S2iD7pc6otyA18RhZgcbDNtbMG
32	angelica	angel@angel.com	$2b$10$9PkXMzzncz6PQxm9Mtt0quXTz4lfr8tFvtC/knzbEaGBKZUYz6C0.	$2b$10$t/cVu4lJpXhIotMYPmwLd.4Q4mdvVNEVZM7RE0oAlf/zNnGMHFKuq
33	angelica	angel@angel.com	$2b$10$3RNmVXpMltHmTlvVuWgS4O0NNKeoZf9I97vkaE1r6wIQXmqEkX4Ty	$2b$10$wjl7RjsdNhHF8A5ziTtqfeEgP4y0MXZMVUk4KlvkZsTOgiYTOKP5i
34	angelica	angel@angel.com	$2b$10$k/VznoO0zsLjNFwZZrusHOCjO5sZ2nUWLVr8P3Dgso6rovBO/4pf2	$2b$10$C40NrvPveUE1ymg2hAgu6.eDS1Uv46YAyRc3z4yQ/u2jKF6S6s8Py
35	angelica	angel@angel.com	$2b$10$e7GIWae1Yt6HNWqPnlI6aORWSPFTa5NruAEEzCKLMLYlv5LXwLZGm	$2b$10$X1A50fw6cQq1Oh6wxV3AWOIOhWayXuZrCB/RYi7euk8BYU.sZFPQi
36	angelica	angel@angel.com	$2b$10$K4pfMIXVe3VNxri8WzLYOeTRF5IvxpqlP1VdXqExONftLUJzG8GLy	$2b$10$1AKQhbzYx8iKiCPjfY.cvOY74s45TS4h/wnNbECGpk5FcSUajo3pK
37	angelica	angel@angel.com	$2b$10$6PwE3hJtqjT4KjAv22pcAeK2e4oLSCyYuQ1mL6zhi8sb1knp04rlS	$2b$10$SnGovRAmpBBLfjkEBNOigOEx1qEEBNnm8gnLWVsgrNWqJ0PnobdPi
38	angelica	angel@angel.com	$2b$10$JBc1ymE7JBA/FbVv7ldHjOQgMXPFk6zpgaVw3KbwUKl22s92idb36	$2b$10$nttJk9DVWNCDgXrf29xXQOiGHx8X2rvPvMoOdkt07Xtb9D.XXHeaC
39	angelica	angel@angel.com	$2b$10$c.QavymIzc/PG9hWRg4zAOHr8vSpRfLLmtxl6gWFgzFWYpqw/.2bu	$2b$10$GPIFlGxgeLrDPgUEotHuieXNs89dSowgBofMI7V7/OQoW1YHY6ZX6
40	angelica	angel@angel.com	$2b$10$ve35v/lyMWxD1fqGVgWHXuyKpYJ87yaBTJiOnwSrrW2QmzINfpnYu	$2b$10$d0nVXAGuLikUapRxvi6BNeejzhNF2PyNznvCjwOwydVRPOIJuAApu
41	angelica	angel@angel.com	$2b$10$H3DBqKzljA3MrpeNXPE7mO7NXfa1xAisnAn57oIgiTWuUX1YKpzxW	$2b$10$EJQL3pjnd.iIjAIdy3egdOLBdVkRjJYfL31gNo/DnjXG/4NJlCTxq
42	angelica	angel@angel.com	$2b$10$0XuC1YmPX3o4vp2LN.k9CuAQVlK/..JkxUWLDFKguY8yxH.GQcX3S	$2b$10$O/x1A92D3MTh5rEJ9qqgue07bO1Zold71qM/F.C49UceuqpIbms1e
43	angelica	angel@angel.com	$2b$10$77k9KLf3zwSXPZ/Zet7dV.TUWOiKOS9nlQ82H0IL1CZd1r3dey1vG	$2b$10$ADbJnkC7w8wzYRrXg2vepeofuniytxcwwmomkUfFunsYYDJIg1.jO
\.


--
-- Data for Name: movimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movimento (id, valor, entrada, saida, data, descricao, user_id) FROM stdin;
1	1000		true	2021-11-10	livros	\N
2	1000	\N	true	2021-11-10	livros	\N
3	1000	\N	true	2021-11-10	livros	\N
4	1000	\N	true	2021-11-10	livros	\N
5	1000	\N	false	2021-11-10	livros	\N
6	1000	true	false	2021-11-10	livros	\N
7	1000	true	false	2021-11-10	livros	\N
8	1000	true	false	2021-11-10	livros	\N
9	1000	true	false	2021-11-10	livros	\N
10	100	false	true	2021-10-10	não me lembro	\N
11	10	false	true	2021-10-20	absorventes	10
12	10	true	false	22/10	teste	10
13	50	false	true	22/10	pagar	10
14	50	false	true	22/10	pagar	10
15	50	false	true	22/10	pagar	10
16	\N	true	false	22/10		10
17	1000	true	false	22/10	comer	11
18	20	false	true	22/10	comer	11
19	10	false	true	22/10	10	11
20	10	false	true	22/10	10	11
21	10	true	false	22/10	adsn	11
22	10	false	true	22/10	teste	11
23	10	true	false	22/10	teste	11
24	10.00	true	false	23/10	comida	12
25	20	false	true	23/10	mais comida	12
26	100.00	true	false	23/10	mais comida	12
27	10	false	true	23/10	pao	12
28	50	true	false	23/10	shrek	12
29	10	false	true	23/10	fralda	12
30	10.00	false	true	23/10	fralda	13
31	10	true	false	23/10	comida	13
32	10	false	true	23/10	teste	13
33	10	false	true	23/10	tste	14
34	12	false	true	23/10	12	14
35	10	false	true	23/10	10	15
36	123	false	true	23/10	dgfas	15
37	234	false	true	23/10	edfwq	15
38	3425.435456	true	false	23/10	dfdf	15
39	234	false	true	23/10	ewr	16
40	345	false	true	23/10	fsg	16
41	435	true	false	23/10	ret	16
42	234	true	false	23/10	dgf	17
43	213	false	true	23/10	df	18
44	213	true	false	23/10	ewrf	18
45	324	false	true	23/10	df	19
46	10.00	true	false	23/10	pao	10
47	10.00	false	true	23/10	mais pai	10
48	234	true	false	23/10	saf	10
49	10	true	false	23/10	oasif	10
50	10	true	false	23/10	entrada	10
51	10	false	true	23/10	saida	10
52	10	true	false	23/10	entrada	10
53	10	true	false	23/10	sdongfsd	16
54	100	false	true	23/10	saida	10
55	200	true	false	23/10	entrada	10
56	1000	false	true	24/10	isuabf	19
57	300	false	true	24/10	SAIDA	10
58	95	true	false	24/10	SAIDA	10
59	1	true	false	24/10	1	10
60	0.1	false	true	24/10	dec	10
61	10.00000	true	false	24/10	teste	10
62	\N	true	false	24/10		10
63	10	true	false	24/10	10	10
64	0.90	false	true	24/10	teste	10
65	0.90	true	false	24/10	teste	10
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sessions (id, user_id, token) FROM stdin;
1	7	494a4017-b1ef-4bff-b457-2ee7c658e227
2	7	4aa2f194-7c26-40f1-880f-629d1b7c7931
3	7	ec03ff24-dd37-4e4d-a725-ee60e3aac0d9
4	7	5e529e06-29ec-46c4-bb7d-b923fd6f9454
5	9	d91d3923-9f5f-4c5f-a7e2-f94df4560c93
6	9	5bed2284-eeaa-463c-b8f0-d3131348ca9f
7	9	eb9f84ee-b54b-43f2-bca2-d3667d5820a7
8	10	05c2bc6e-92d0-4f08-8ee8-436b2f53f1a1
9	10	ae3f62c5-df31-48e0-85ae-6f7c9a7ea55c
10	11	227d17eb-72b7-4e61-9174-5bc68a4dc062
11	11	cb53e432-961a-4c82-957b-6408ff7776cc
12	10	1f518fba-8d01-4bf6-8550-29b539f088de
13	11	4b1a28bd-a4c6-4bef-a539-c329ab69ad78
14	11	9a387acb-22a6-461c-9ed4-7c154cb40574
15	11	cc82e218-8b3f-4b67-855e-5923d9b52986
16	11	d00a3239-a1bf-4e1a-aa3b-a25aeed302d0
17	11	9227ada3-43e5-4263-ac64-ef3bde041a1b
18	11	448bcaef-789e-4e58-ad14-b090190a031a
19	11	66271715-c394-4850-bb06-5ef603a7f89d
20	11	69887f3c-efeb-49bb-a576-9adbd5b7e8a7
21	11	e5807b78-2e74-4a64-892a-f4dedc6c4099
22	10	b8dccd00-4153-4e01-8982-eab532c0d491
23	10	e14099e1-bf52-4786-bb4b-38e4eebbda70
24	10	bc219c8a-e13c-4de4-bc83-4e227266d15e
25	10	08928b04-7acb-4e5b-af7e-47f7f9c1dd13
26	10	d7e81086-87f3-49c4-be56-69fd71c4184d
27	10	11dea488-b06d-4486-be6b-0f16b5381138
28	10	afcbe616-09cb-4c76-ae3d-c66a2f9cc247
29	10	95ad84bf-b773-4843-870e-5520fbeba6be
30	10	03c5a8b1-3645-449e-8825-302cfbb74123
31	11	ec6959e6-6a4e-4ebc-9cbf-2ee907f9e9b0
32	11	07f6697a-4414-40bc-959f-a6ccd1e9587b
33	11	f174ac9d-9ec5-433a-9a5b-1676c2b34695
34	11	b314d262-5998-485f-b152-1c3a7cb6afbb
35	11	0d5867a7-a6d3-46de-8c39-f9edf292c5e8
36	11	b799bb22-7f53-42dc-ac3a-fb8540edb264
37	11	3bec7de5-6ded-4f61-b0fb-e7661d17cc3b
38	10	dc710a3e-f3ba-4413-9cce-01470003bb20
39	10	216c5351-322b-4bf4-a17b-1d2cde5bcf2c
40	10	c6fe9c06-695c-4ae1-8736-55f419e0584c
41	10	b509324a-9c01-4a06-a2d8-f17fcde91b4e
42	10	b041419e-13c2-4563-ace9-3a215c1c5e03
43	10	f09d4658-9ab2-4b45-84b0-827788822af5
44	10	f428cd7d-c093-420b-97ec-10bb0018bd4c
45	10	17916e34-4afd-481c-9be5-170f2c75b642
46	10	99f204e6-6441-4efe-90f0-a3d4392fcc5c
47	10	00634076-e5f4-49b1-8216-58bb389d77d0
48	10	9bf64f15-48df-4970-b0fa-274406ede6e6
49	10	6e5f7037-10ef-4356-b9ea-9956d12a3208
50	10	de0d9a8a-593a-474e-85ff-5b676911fe52
51	10	a3e51fcc-3bde-4e29-9e74-893a28e9e00c
52	10	b32aaeb8-9f39-4bbb-a681-2a506c507080
53	10	e4eda81e-aaa0-4743-9737-2cb04da73e3a
54	10	a33242f5-beaa-414b-867e-cf9ef896dcf8
55	10	260f0e60-264e-4900-ae90-a0431a6c3114
56	11	a8386c19-da2d-4bde-9edd-779d92c3c25f
57	12	f3dcfa6f-914e-4ec8-8d77-19f8d25c6e2e
58	12	403ac7f6-6597-44dd-8e88-e054bf0a108b
59	12	d8004533-a622-48df-b557-7bdff728ec08
60	12	2d9eb5e0-8cbf-4642-bd3f-bffbc73c274f
61	13	01b3d084-d486-43a5-b82e-80d126818306
62	13	8b66dfd7-58d0-43cc-8bf6-95c740b1d818
63	13	6d0162db-2165-477c-85c4-ee4e08c946db
64	14	8c257842-d280-40af-8585-451535448fc8
65	15	addc5665-8724-4902-9ed9-c7da5a50ec30
66	15	508bba80-a245-4bc7-929b-5c287cda433f
67	15	537c22c5-aa5d-4e41-ac7f-6310870a7fbd
68	15	f4120284-1003-4198-bbeb-0ae079a62433
69	15	6d0b3db7-f2e2-496e-b1c5-762b4d0b24d0
70	15	ae43f905-4568-4ca8-b00e-9189618e0fa3
71	15	2a36f1f9-2264-40e4-ba0b-e5aa4324745d
72	16	e9f129cc-bab8-4665-b426-362ce9910d77
73	16	e80c99e0-86ed-4bb1-8111-f7d25dc5f769
74	17	c2ec81a7-b286-435d-9feb-985b0896cd5f
75	17	e9cfa72a-5f2f-40ca-baeb-56dd37a398e3
76	18	8f8e1914-4141-45da-a17b-de2751cadeb9
77	18	3f72be22-d847-4679-b491-ce8cd120b5f4
78	19	c171337d-be63-45f1-992a-78215a0a8e61
79	10	b88228d7-daf0-439e-b051-e109a09e3762
80	10	6bc00e45-9642-4ada-a2aa-24c1def154a4
81	10	777eaf32-9931-4b33-abd4-909fcf4a3e47
82	10	28cad625-b89f-4ecd-8fd9-13f8eeed95c8
83	10	ec6e5a58-6797-47bf-8b2b-60f30c5d537f
84	10	9c490f87-7b56-49ed-9a8c-9c7e20602103
85	10	6bdc7ccf-07df-490f-9812-fbdcdf873896
86	16	43875320-9624-4e40-9405-052e698bbc81
87	16	256bb882-8b89-4611-b9a8-03dbda054457
88	16	6bb131a0-c06a-4496-9aa3-c362743297e1
89	10	a4edc0c4-e720-40a0-aad2-1597325e9832
90	10	c2865d0f-fbcb-40ac-a044-4d206c4aa674
91	10	7cf5a123-27e9-4273-8e68-3fd737af8036
92	10	60a1041f-9998-4251-82ed-d8806018621e
93	10	4b08542f-6240-4859-9de1-f6bd8a81f465
94	10	37f9f940-8a9c-49d5-994d-bd92df89cb8f
95	10	4eb6e548-5648-4ecf-8661-cb3e25b95dd9
96	10	5dbd9fc2-c73e-4e47-9922-e8950dda2c90
97	10	402fea65-30c5-488d-84ce-6d07d2e0478e
98	10	c181f181-c5c6-4b64-aa69-2d8c52ca90b2
99	10	018c6970-4c85-42b7-b9bf-52c6b42b86d8
100	10	a6d69afb-8f6c-4e8b-8e71-29a0943c18b5
101	10	a5cdd800-660f-429a-8f9e-a46f66cd0a31
102	10	7f38de88-8e9a-4d16-ac14-5a6df2cc8918
103	16	2bf1896d-99f2-4721-a8f9-dc7f200fbc54
104	19	d869e5d2-7ee0-4d9d-81a1-d7e67dd29925
105	11	8032cecf-500f-4e54-a54e-e4d3cfc8b514
106	11	ef7d8250-d3be-483e-ac9f-011a4a892d4d
107	11	89f9a809-3f5d-47e1-8937-dc4f185578f1
108	11	b13c492b-6436-4a61-8bdd-f08a048055a8
109	11	03b4e2a9-ba05-4a23-a7b4-f044b0cc4642
110	19	3896455b-c155-42e7-95cf-b0a6a51a5651
111	14	2c1eac84-9731-4a1e-a9f9-ecc59933080f
112	14	cf7f990c-c900-431d-8783-6ef2e342feb6
113	10	31670b0a-038b-4f5d-83cc-c8476a5a1269
114	14	8c313c0c-9eca-48b0-98a7-0ab5e4f2fd83
115	10	134a8a7b-07ef-4a4a-9970-d96c1060dbc5
116	14	1d22a41d-7994-43bc-b867-d6c87305480b
117	10	3f33353d-ca4e-4e50-9d80-51129116a70a
118	14	e0f6caee-a61f-402f-ba36-0ef9970f65af
119	10	e712fe83-f7bb-4ab3-bac2-466da7606a0f
120	14	681f726b-ae7e-4426-b776-e63fca81ebc8
121	10	a2503e59-3285-49db-8481-6c7e7bdbc060
122	14	35c07841-1fb7-4523-bb11-6e81486ac1a2
123	10	670cdb94-a2d2-4ea8-85ca-3671d6e2d2c2
124	14	2a837b3c-3be2-46db-a62f-dde5f2f10122
125	10	3049533a-0f65-4727-a078-f1db561be226
126	10	8f971e2f-d04e-4bb2-88e7-977c7bb0302a
127	10	a16feed9-3083-4b12-95ef-1f66b44637a4
128	10	2e3053e0-e89e-4cf4-ad09-31d1e397d02c
129	10	cb410c37-0136-4ae2-b70f-1d82f31d736d
130	10	ff40d8ec-f319-4594-aed6-0de7de235305
131	10	7b9b68ef-30c2-49a4-ad16-b63804e4cc0c
132	10	34145ec0-7ee9-4983-b809-78a9febd945b
133	10	7538cfc7-2105-4665-b19b-3b54c958acf6
\.


--
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_seq', 43, true);


--
-- Name: movimento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movimento_id_seq', 65, true);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 133, true);


--
-- PostgreSQL database dump complete
--
