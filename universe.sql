--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: details; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.details (
    details_id integer NOT NULL,
    name character varying(40) NOT NULL,
    written_date date
);


ALTER TABLE public.details OWNER TO freecodecamp;

--
-- Name: details_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.details_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.details_detail_id_seq OWNER TO freecodecamp;

--
-- Name: details_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.details_detail_id_seq OWNED BY public.details.details_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    weight numeric(5,2),
    description text,
    is_sepherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    weight numeric(5,2),
    description text,
    is_sepherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    weight numeric(5,2),
    description text,
    is_sepherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    weight numeric(5,2),
    description text,
    is_sepherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: details details_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.details ALTER COLUMN details_id SET DEFAULT nextval('public.details_detail_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: details; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.details VALUES (1, 'detay1', NULL);
INSERT INTO public.details VALUES (2, 'detay2', NULL);
INSERT INTO public.details VALUES (3, 'detay3', NULL);
INSERT INTO public.details VALUES (4, 'detay4', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'burak', 30, 130.00, 'Firsexplored galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'tolga', 28, 90.00, 'Second explored galaxy', true);
INSERT INTO public.galaxy VALUES (3, 'muhammet', 64, 80.00, 'Third explored galaxy', true);
INSERT INTO public.galaxy VALUES (4, 'nese', 58, 60.00, 'Fourth explored galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'gulay', 75, 75.00, 'ifth eexplored galaxy', false);
INSERT INTO public.galaxy VALUES (6, 'cafer', 80, 50.00, 'Sixth explored galaxy', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'jupiter', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'saturn', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'uranus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'pluto', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'burakgez', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'randomgez', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'random2gez', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'random3gez', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'random4gez', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'yenigez', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (14, 'eskigez', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (15, 'eskiyenigez', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'gunes', 1000000, 100.00, 'Brightest', true, 1);
INSERT INTO public.star VALUES (2, 'buyukayi', 1000000, 100.00, 'Biggest', false, 1);
INSERT INTO public.star VALUES (3, 'kucukayi', 1000000, 100.00, 'Smallest', false, 1);
INSERT INTO public.star VALUES (4, 'kutupyildizi', 1000000, 100.00, 'Nortest', false, 2);
INSERT INTO public.star VALUES (5, 'seheryildizi', 1000000, 100.00, 'Boxerst', false, 3);
INSERT INTO public.star VALUES (6, 'ayyildizi', 1000000, 100.00, 'Turkish', false, 4);


--
-- Name: details_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.details_detail_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: details details_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.details
    ADD CONSTRAINT details_name_key UNIQUE (name);


--
-- Name: details details_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.details
    ADD CONSTRAINT details_pkey PRIMARY KEY (details_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

