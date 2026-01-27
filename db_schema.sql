--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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
-- Name: backgroundtab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backgroundtab (
    background_id integer NOT NULL,
    background_name character varying(500) NOT NULL
);


ALTER TABLE public.backgroundtab OWNER TO postgres;

--
-- Name: backgroundtab_background_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backgroundtab_background_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.backgroundtab_background_id_seq OWNER TO postgres;

--
-- Name: backgroundtab_background_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backgroundtab_background_id_seq OWNED BY public.backgroundtab.background_id;


--
-- Name: classtab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classtab (
    class_id integer NOT NULL,
    class_name character varying(500) NOT NULL
);


ALTER TABLE public.classtab OWNER TO postgres;

--
-- Name: classtab_class_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classtab_class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.classtab_class_id_seq OWNER TO postgres;

--
-- Name: classtab_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classtab_class_id_seq OWNED BY public.classtab.class_id;


--
-- Name: npc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.npc (
    npc_id integer NOT NULL,
    name character varying(500),
    race integer,
    gender character varying(500),
    age_count integer,
    class integer,
    worldview integer,
    wealth character varying(500),
    occupation character varying(500),
    towns character varying(500),
    staterelations integer,
    sociability integer,
    background integer DEFAULT 2,
    isalive boolean DEFAULT true NOT NULL,
    seeplayers boolean DEFAULT false NOT NULL
);


ALTER TABLE public.npc OWNER TO postgres;

--
-- Name: npc_npc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.npc_npc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.npc_npc_id_seq OWNER TO postgres;

--
-- Name: npc_npc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.npc_npc_id_seq OWNED BY public.npc.npc_id;


--
-- Name: racetab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.racetab (
    race_id integer NOT NULL,
    race_name character varying(500) NOT NULL
);


ALTER TABLE public.racetab OWNER TO postgres;

--
-- Name: racetab_race_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.racetab_race_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.racetab_race_id_seq OWNER TO postgres;

--
-- Name: racetab_race_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.racetab_race_id_seq OWNED BY public.racetab.race_id;


--
-- Name: sociabilitytab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sociabilitytab (
    sociability_id integer NOT NULL,
    sociability_name character varying(500) NOT NULL
);


ALTER TABLE public.sociabilitytab OWNER TO postgres;

--
-- Name: sociabilitytab_sociability_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sociabilitytab_sociability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sociabilitytab_sociability_id_seq OWNER TO postgres;

--
-- Name: sociabilitytab_sociability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sociabilitytab_sociability_id_seq OWNED BY public.sociabilitytab.sociability_id;


--
-- Name: staterelationstab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staterelationstab (
    staterelations_id integer NOT NULL,
    staterelations_name character varying(500) NOT NULL
);


ALTER TABLE public.staterelationstab OWNER TO postgres;

--
-- Name: staterelationstab_staterelations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.staterelationstab_staterelations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staterelationstab_staterelations_id_seq OWNER TO postgres;

--
-- Name: staterelationstab_staterelations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.staterelationstab_staterelations_id_seq OWNED BY public.staterelationstab.staterelations_id;


--
-- Name: worldviewtab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.worldviewtab (
    worldview_id integer NOT NULL,
    worldview_name character varying(500) NOT NULL
);


ALTER TABLE public.worldviewtab OWNER TO postgres;

--
-- Name: worldvewtab_worldvew_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.worldvewtab_worldvew_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.worldvewtab_worldvew_id_seq OWNER TO postgres;

--
-- Name: worldvewtab_worldvew_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.worldvewtab_worldvew_id_seq OWNED BY public.worldviewtab.worldview_id;


--
-- Name: backgroundtab background_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backgroundtab ALTER COLUMN background_id SET DEFAULT nextval('public.backgroundtab_background_id_seq'::regclass);


--
-- Name: classtab class_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classtab ALTER COLUMN class_id SET DEFAULT nextval('public.classtab_class_id_seq'::regclass);


--
-- Name: npc npc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.npc ALTER COLUMN npc_id SET DEFAULT nextval('public.npc_npc_id_seq'::regclass);


--
-- Name: racetab race_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.racetab ALTER COLUMN race_id SET DEFAULT nextval('public.racetab_race_id_seq'::regclass);


--
-- Name: sociabilitytab sociability_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sociabilitytab ALTER COLUMN sociability_id SET DEFAULT nextval('public.sociabilitytab_sociability_id_seq'::regclass);


--
-- Name: staterelationstab staterelations_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staterelationstab ALTER COLUMN staterelations_id SET DEFAULT nextval('public.staterelationstab_staterelations_id_seq'::regclass);


--
-- Name: worldviewtab worldview_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worldviewtab ALTER COLUMN worldview_id SET DEFAULT nextval('public.worldvewtab_worldvew_id_seq'::regclass);


--
-- Name: backgroundtab backgroundtab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backgroundtab
    ADD CONSTRAINT backgroundtab_pkey PRIMARY KEY (background_id);


--
-- Name: classtab classtab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classtab
    ADD CONSTRAINT classtab_pkey PRIMARY KEY (class_id);


--
-- Name: npc npc_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_name_key UNIQUE (name);


--
-- Name: npc npc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_pkey PRIMARY KEY (npc_id);


--
-- Name: racetab racetab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.racetab
    ADD CONSTRAINT racetab_pkey PRIMARY KEY (race_id);


--
-- Name: sociabilitytab sociabilitytab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sociabilitytab
    ADD CONSTRAINT sociabilitytab_pkey PRIMARY KEY (sociability_id);


--
-- Name: staterelationstab staterelationstab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staterelationstab
    ADD CONSTRAINT staterelationstab_pkey PRIMARY KEY (staterelations_id);


--
-- Name: worldviewtab worldvewtab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worldviewtab
    ADD CONSTRAINT worldvewtab_pkey PRIMARY KEY (worldview_id);


--
-- Name: npc npc_background_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_background_fkey FOREIGN KEY (background) REFERENCES public.backgroundtab(background_id);


--
-- Name: npc npc_class_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_class_fkey FOREIGN KEY (class) REFERENCES public.classtab(class_id);


--
-- Name: npc npc_race_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_race_fkey FOREIGN KEY (race) REFERENCES public.racetab(race_id);


--
-- Name: npc npc_sociability_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_sociability_fkey FOREIGN KEY (sociability) REFERENCES public.sociabilitytab(sociability_id);


--
-- Name: npc npc_staterelations_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_staterelations_fkey FOREIGN KEY (staterelations) REFERENCES public.staterelationstab(staterelations_id);


--
-- Name: npc npc_worldview_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_worldview_fkey FOREIGN KEY (worldview) REFERENCES public.worldviewtab(worldview_id);


--
-- PostgreSQL database dump complete
--

