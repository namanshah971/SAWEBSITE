--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: report_questions; Type: TABLE; Schema: public; Owner: prs
--

CREATE TABLE public.report_questions (
    index integer NOT NULL,
    question character varying
);


ALTER TABLE public.report_questions OWNER TO prs;

--
-- Name: report_questions_index_seq; Type: SEQUENCE; Schema: public; Owner: prs
--

CREATE SEQUENCE public.report_questions_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_questions_index_seq OWNER TO prs;

--
-- Name: report_questions_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prs
--

ALTER SEQUENCE public.report_questions_index_seq OWNED BY public.report_questions.index;


--
-- Name: review_performance; Type: TABLE; Schema: public; Owner: prs
--

CREATE TABLE public.review_performance (
    index integer NOT NULL,
    username character varying(50),
    manager_id character varying(50) NOT NULL,
    report character varying(355) NOT NULL,
    q1 character varying,
    q2 character varying,
    q3 character varying,
    q4 character varying,
    q5 character varying,
    q6 character varying,
    q7 character varying,
    q8 character varying,
    q9 character varying,
    status character varying,
    lock date,
    performance_grid character varying,
    date_created date,
    completed boolean
);


ALTER TABLE public.review_performance OWNER TO prs;

--
-- Name: review_performance_index_seq; Type: SEQUENCE; Schema: public; Owner: prs
--

CREATE SEQUENCE public.review_performance_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_performance_index_seq OWNER TO prs;

--
-- Name: review_performance_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prs
--

ALTER SEQUENCE public.review_performance_index_seq OWNED BY public.review_performance.index;


--
-- Name: report_questions index; Type: DEFAULT; Schema: public; Owner: prs
--

ALTER TABLE ONLY public.report_questions ALTER COLUMN index SET DEFAULT nextval('public.report_questions_index_seq'::regclass);


--
-- Name: review_performance index; Type: DEFAULT; Schema: public; Owner: prs
--

ALTER TABLE ONLY public.review_performance ALTER COLUMN index SET DEFAULT nextval('public.review_performance_index_seq'::regclass);


--
-- Data for Name: report_questions; Type: TABLE DATA; Schema: public; Owner: prs
--

COPY public.report_questions (index, question) FROM stdin;
1	How is the quality of his/her work?
2	What is his/her work ethic?
3	Please comment on his/her communication and interpersonal skills.
4	Can he/she work independently and as part of a team?
5	Does he/she take initiative? Please give an example.
6	How are his/her technical skills, if applicable? Please give an example.
7	How reliable is he/she? Please give an example.
8	Please comment on his/her overall working performance.
9	List 3 reasonable goals/targets for the next 6 months.
\.


--
-- Data for Name: review_performance; Type: TABLE DATA; Schema: public; Owner: prs
--

COPY public.review_performance (index, username, manager_id, report, q1, q2, q3, q4, q5, q6, q7, q8, q9, status, lock, performance_grid, date_created, completed) FROM stdin;
34	MK	Ash	September 2019	fth	jgt	dtuj	dtju	jdt	dtj	tjd	tjd	tjd	A	2019-10-10	star	\N	t
35	Jo	Ash	September 2019	question 1	as	ad	question 4	sad	ad	asd	sad	dad	A	2019-10-10	core_player	\N	t
33	LK	Ash	September 2019	tyu	dth	ehs	seyh	dehde	ueus	stju	sux5tj	stju56	A	2019-10-10	potential_gem	\N	f
28	CK	Ash	March 2018	It's good\n	satisfactory\n	Needs improvement	as a team\n\n	Yes	Good	Very reliable 	Good	High returns, Faster work and Code refactor 	A	\N	star	\N	t
3	Jo	Ash	September 2018	Good  work!	Satisfactory work 	gv,m	,bbj	rq	fgsges	qasfc	bnh,sf	qfas	A	\N	average_performer	\N	t
2	Jo	Ash	March 2018	Atlas wants to go home 	can improve a lot	excellentf	goodwfaqw	can improve	excellent	goods	can improves	excellentf	A	\N	average_performer	\N	t
4	CK	Ash	September 2018	good	can improve	excellent	good	can improve	excellent	good	can improve	excellent	A	\N	star	\N	t
1	Jo	Sam	September 2018	good	can improve	excellent	good	can improve	excellent	good	can improve	excellent	A	2019-07-21	high_potential	\N	f
30	CK	Ash	September 2019	\N	\N	\N	\N	\N	\N	\N	\N	\N	Not Completed	2019-10-10	potential_gem	\N	f
\.


--
-- Name: report_questions_index_seq; Type: SEQUENCE SET; Schema: public; Owner: prs
--

SELECT pg_catalog.setval('public.report_questions_index_seq', 9, true);


--
-- Name: review_performance_index_seq; Type: SEQUENCE SET; Schema: public; Owner: prs
--

SELECT pg_catalog.setval('public.review_performance_index_seq', 35, true);


--
-- Name: report_questions report_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: prs
--

ALTER TABLE ONLY public.report_questions
    ADD CONSTRAINT report_questions_pkey PRIMARY KEY (index);


--
-- Name: review_performance review_performance_pkey; Type: CONSTRAINT; Schema: public; Owner: prs
--

ALTER TABLE ONLY public.review_performance
    ADD CONSTRAINT review_performance_pkey PRIMARY KEY (index);


--
-- PostgreSQL database dump complete
--

