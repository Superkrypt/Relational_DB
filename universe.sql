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

ALTER TABLE ONLY public.star DROP CONSTRAINT star_galaxy_found_in_fkey;
ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_star_found_within_fkey;
ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_planet_rotating_fkey;
ALTER TABLE ONLY public.star DROP CONSTRAINT star_pkey;
ALTER TABLE ONLY public.star DROP CONSTRAINT star_name_key;
ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_pkey;
ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_another_fourth_key;
ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_pkey;
ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_another_fourth_key;
ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_pkey;
ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_name_key;
ALTER TABLE ONLY public.aux_table DROP CONSTRAINT aux_table_pkey;
ALTER TABLE ONLY public.aux_table DROP CONSTRAINT aux_table_another_one_key;
ALTER TABLE public.star ALTER COLUMN another_third DROP DEFAULT;
ALTER TABLE public.star ALTER COLUMN star_id DROP DEFAULT;
ALTER TABLE public.planet ALTER COLUMN another_fourth DROP DEFAULT;
ALTER TABLE public.planet ALTER COLUMN another_third DROP DEFAULT;
ALTER TABLE public.planet ALTER COLUMN planet_id DROP DEFAULT;
ALTER TABLE public.moon ALTER COLUMN another_fourth DROP DEFAULT;
ALTER TABLE public.moon ALTER COLUMN another_third DROP DEFAULT;
ALTER TABLE public.moon ALTER COLUMN moon_id DROP DEFAULT;
ALTER TABLE public.galaxy ALTER COLUMN another_third DROP DEFAULT;
ALTER TABLE public.galaxy ALTER COLUMN galaxy_id DROP DEFAULT;
ALTER TABLE public.aux_table ALTER COLUMN another_third DROP DEFAULT;
ALTER TABLE public.aux_table ALTER COLUMN aux_table_id DROP DEFAULT;
DROP SEQUENCE public.star_star_id_seq;
DROP SEQUENCE public.star_another_third_seq;
DROP TABLE public.star;
DROP SEQUENCE public.planet_planet_id_seq;
DROP SEQUENCE public.planet_another_third_seq;
DROP SEQUENCE public.planet_another_fourth_seq;
DROP TABLE public.planet;
DROP SEQUENCE public.moon_moon_id_seq;
DROP SEQUENCE public.moon_another_third_seq;
DROP SEQUENCE public.moon_another_fourth_seq;
DROP TABLE public.moon;
DROP SEQUENCE public.galaxy_galaxy_id_seq;
DROP SEQUENCE public.galaxy_another_third_seq;
DROP TABLE public.galaxy;
DROP SEQUENCE public.aux_table_aux_id_seq;
DROP SEQUENCE public.aux_table_another_third_seq;
DROP TABLE public.aux_table;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: aux_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aux_table (
    aux_table_id integer NOT NULL,
    name character varying(100),
    another_one text,
    another_second numeric,
    another_third integer NOT NULL
);


ALTER TABLE public.aux_table OWNER TO freecodecamp;

--
-- Name: aux_table_another_third_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aux_table_another_third_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aux_table_another_third_seq OWNER TO freecodecamp;

--
-- Name: aux_table_another_third_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aux_table_another_third_seq OWNED BY public.aux_table.another_third;


--
-- Name: aux_table_aux_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aux_table_aux_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aux_table_aux_id_seq OWNER TO freecodecamp;

--
-- Name: aux_table_aux_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aux_table_aux_id_seq OWNED BY public.aux_table.aux_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    alternative_name text,
    number_of_planets integer NOT NULL,
    distance_in_lightyears numeric NOT NULL,
    another_third integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_another_third_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_another_third_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_another_third_seq OWNER TO freecodecamp;

--
-- Name: galaxy_another_third_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_another_third_seq OWNED BY public.galaxy.another_third;


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
    name character varying(50),
    alternative_name text,
    year_discovered integer NOT NULL,
    distance_in_lightyears numeric NOT NULL,
    has_life boolean,
    planet_id integer,
    another_third integer NOT NULL,
    another_fourth integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_another_fourth_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_another_fourth_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_another_fourth_seq OWNER TO freecodecamp;

--
-- Name: moon_another_fourth_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_another_fourth_seq OWNED BY public.moon.another_fourth;


--
-- Name: moon_another_third_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_another_third_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_another_third_seq OWNER TO freecodecamp;

--
-- Name: moon_another_third_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_another_third_seq OWNED BY public.moon.another_third;


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
    name character varying(50),
    alternative_name text,
    number_of_moons integer NOT NULL,
    distance_in_lightyears numeric NOT NULL,
    star_id integer,
    another_third integer NOT NULL,
    another_fourth integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_another_fourth_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_another_fourth_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_another_fourth_seq OWNER TO freecodecamp;

--
-- Name: planet_another_fourth_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_another_fourth_seq OWNED BY public.planet.another_fourth;


--
-- Name: planet_another_third_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_another_third_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_another_third_seq OWNER TO freecodecamp;

--
-- Name: planet_another_third_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_another_third_seq OWNED BY public.planet.another_third;


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
    name character varying(50),
    alternative_name text,
    number_of_planets integer NOT NULL,
    distance_in_lightyears numeric NOT NULL,
    has_life boolean,
    galaxy_id integer,
    another_third integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_another_third_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_another_third_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_another_third_seq OWNER TO freecodecamp;

--
-- Name: star_another_third_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_another_third_seq OWNED BY public.star.another_third;


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
-- Name: aux_table aux_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aux_table ALTER COLUMN aux_table_id SET DEFAULT nextval('public.aux_table_aux_id_seq'::regclass);


--
-- Name: aux_table another_third; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aux_table ALTER COLUMN another_third SET DEFAULT nextval('public.aux_table_another_third_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy another_third; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN another_third SET DEFAULT nextval('public.galaxy_another_third_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon another_third; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN another_third SET DEFAULT nextval('public.moon_another_third_seq'::regclass);


--
-- Name: moon another_fourth; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN another_fourth SET DEFAULT nextval('public.moon_another_fourth_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet another_third; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN another_third SET DEFAULT nextval('public.planet_another_third_seq'::regclass);


--
-- Name: planet another_fourth; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN another_fourth SET DEFAULT nextval('public.planet_another_fourth_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star another_third; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN another_third SET DEFAULT nextval('public.star_another_third_seq'::regclass);


--
-- Data for Name: aux_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aux_table VALUES (1, 'ASDAS', NULL, NULL, 1);
INSERT INTO public.aux_table VALUES (2, 'ASDAS', NULL, NULL, 2);
INSERT INTO public.aux_table VALUES (3, 'ASDAS', NULL, NULL, 3);
INSERT INTO public.aux_table VALUES (4, 'ASDAS', NULL, NULL, 4);
INSERT INTO public.aux_table VALUES (5, 'ASDAS', NULL, NULL, 5);
INSERT INTO public.aux_table VALUES (6, 'ASDAS', NULL, NULL, 6);
INSERT INTO public.aux_table VALUES (7, 'ASDAS', NULL, NULL, 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', NULL, 1000000, 2343344343.23, 1);
INSERT INTO public.galaxy VALUES (2, 'andromeda', NULL, 1000000, 23433235544343.23, 2);
INSERT INTO public.galaxy VALUES (3, 'PROXIMA CENTURI', NULL, 195640000, 898973444343.23, 3);
INSERT INTO public.galaxy VALUES (4, 'PROXIMA LEBRON', NULL, 195640000, 898973444343.23, 4);
INSERT INTO public.galaxy VALUES (5, 'PROXIMA ALPHA', NULL, 195640000, 898973444343.23, 5);
INSERT INTO public.galaxy VALUES (6, 'PROXOMEGALPHA', NULL, 195640000, 898973444343.23, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 1, 1);
INSERT INTO public.moon VALUES (2, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 2, 2);
INSERT INTO public.moon VALUES (3, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 3, 3);
INSERT INTO public.moon VALUES (4, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 4, 4);
INSERT INTO public.moon VALUES (5, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 5, 5);
INSERT INTO public.moon VALUES (6, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 6, 6);
INSERT INTO public.moon VALUES (7, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 7, 7);
INSERT INTO public.moon VALUES (8, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 8, 8);
INSERT INTO public.moon VALUES (9, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 9, 9);
INSERT INTO public.moon VALUES (10, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 10, 10);
INSERT INTO public.moon VALUES (11, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 11, 11);
INSERT INTO public.moon VALUES (12, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 12, 12);
INSERT INTO public.moon VALUES (13, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 13, 13);
INSERT INTO public.moon VALUES (14, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 14, 14);
INSERT INTO public.moon VALUES (15, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 15, 15);
INSERT INTO public.moon VALUES (16, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 16, 16);
INSERT INTO public.moon VALUES (17, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 17, 17);
INSERT INTO public.moon VALUES (18, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 18, 18);
INSERT INTO public.moon VALUES (19, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 19, 19);
INSERT INTO public.moon VALUES (20, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 20, 20);
INSERT INTO public.moon VALUES (21, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 21, 21);
INSERT INTO public.moon VALUES (22, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 22, 22);
INSERT INTO public.moon VALUES (23, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 23, 23);
INSERT INTO public.moon VALUES (24, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 24, 24);
INSERT INTO public.moon VALUES (25, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 25, 25);
INSERT INTO public.moon VALUES (26, 'Moon', 'Lunar', 0, 0.00000012, false, 1, 26, 26);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, 1, 0.000012, 1, 1, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', NULL, 0, 0.000002, 1, 2, 2);
INSERT INTO public.planet VALUES (3, 'Venus', NULL, 0, 0.00001, 1, 3, 3);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'Giove', 75, 0.000002, 1, 4, 4);
INSERT INTO public.planet VALUES (5, 'Mars', 'Marte', 2, 0.00001, 1, 5, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturno', 63, 0.000023, 1, 6, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Urano', 27, 0.0002, 1, 7, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neifion', 14, 0.00032, 1, 8, 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Plutoni', 5, 0.000002, 1, 9, 9);
INSERT INTO public.planet VALUES (10, 'Makemake', NULL, 1, 0.0000011, 1, 10, 10);
INSERT INTO public.planet VALUES (11, 'Kepler-16b', NULL, 0, 0.00023, 2, 11, 11);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', NULL, 0, 0.00034, 2, 12, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', 'Solar', 9, 30, true, 1, 1);
INSERT INTO public.star VALUES (2, 'Vega', 'Lyra', 12, 34, false, 1, 2);
INSERT INTO public.star VALUES (3, 'Hydra', 'Ukda', 5, 15, false, 1, 3);
INSERT INTO public.star VALUES (4, 'Crux', 'Acrux', 5, 15, false, 1, 4);
INSERT INTO public.star VALUES (5, 'Scopius', 'Acrab', 6, 66, false, 2, 5);
INSERT INTO public.star VALUES (6, 'Leo', 'Adhefera', 7, 77, false, 2, 6);


--
-- Name: aux_table_another_third_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aux_table_another_third_seq', 7, true);


--
-- Name: aux_table_aux_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aux_table_aux_id_seq', 7, true);


--
-- Name: galaxy_another_third_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_another_third_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_another_fourth_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_another_fourth_seq', 26, true);


--
-- Name: moon_another_third_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_another_third_seq', 26, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_another_fourth_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_another_fourth_seq', 12, true);


--
-- Name: planet_another_third_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_another_third_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_another_third_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_another_third_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: aux_table aux_table_another_one_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aux_table
    ADD CONSTRAINT aux_table_another_one_key UNIQUE (another_one);


--
-- Name: aux_table aux_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aux_table
    ADD CONSTRAINT aux_table_pkey PRIMARY KEY (aux_table_id);


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
-- Name: moon moon_another_fourth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_another_fourth_key UNIQUE (another_fourth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_another_fourth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_another_fourth_key UNIQUE (another_fourth);


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
-- Name: moon moon_planet_rotating_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_rotating_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_found_within_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_found_within_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_found_in_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_found_in_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

