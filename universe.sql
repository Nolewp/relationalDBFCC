-
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
-- Name: astroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astroid (
    astroid_id integer NOT NULL,
    name character varying(20),
    galaxy_id integer NOT NULL,
    cheese boolean NOT NULL,
    water boolean,
    speed numeric,
    width integer,
    number integer
);


ALTER TABLE public.astroid OWNERPostGIS TO freecodecamp;

--
-- Name: astroid_astroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astroid_astroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astroid_astroid_id_seq OWNER TO freecodecamp;

--
-- Name: astroid_astroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astroid_astroid_id_seq OWNED BY public.astroid.astroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    width integer NOT NULL,
    distance_from_earth integer,
    life_bool boolean,
    lightyears_distance numeric,
    has_dark_matter boolean,
    libgen character varying(10),
    name character varying(40),
    letter text
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
    name character varying(20),
    planet_id integer NOT NULL,
    liquidwater boolean NOT NULL,
    gravity numeric
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
    name character varying(20),
    star_id integer,
    width integer NOT NULL,
    avg_temp integer,
    liquidwater boolean,
    atmostphere boolean,
    gravity numeric
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
    name character varying(20) NOT NULL,
    brightness integer NOT NULL,
    distance_from_earth integer,
    age numeric,
    supernova boolean,
    alive boolean,
    galaxy_id integer,
    letter character varying(5)
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
-- Name: astroid astroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid ALTER COLUMN astroid_id SET DEFAULT nextval('public.astroid_astroid_id_seq'::regclass);


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
-- Data for Name: astroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astroid VALUES (1, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (2, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (3, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (4, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (5, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (6, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (7, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (8, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (9, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (10, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (11, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (12, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (13, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (14, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (15, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (16, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (17, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (18, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (19, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (20, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (21, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (22, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (23, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (24, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (25, NULL, 2, true, NULL, NULL, NULL, NULL);
INSERT INTO public.astroid VALUES (26, NULL, 2, true, NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 1, false, NULL);
INSERT INTO public.moon VALUES (2, NULL, 1, false, NULL);
INSERT INTO public.moon VALUES (3, NULL, 1, false, NULL);
INSERT INTO public.moon VALUES (4, NULL, 1, false, NULL);
INSERT INTO public.moon VALUES (5, NULL, 1, false, NULL);
INSERT INTO public.moon VALUES (6, NULL, 1, false, NULL);
INSERT INTO public.moon VALUES (7, NULL, 1, false, NULL);
INSERT INTO public.moon VALUES (8, NULL, 1, false, NULL);
INSERT INTO public.moon VALUES (9, NULL, 1, false, NULL);
INSERT INTO public.moon VALUES (10, NULL, 1, false, NULL);
INSERT INTO public.moon VALUES (11, NULL, 1, false, NULL);
INSERT INTO public.moon VALUES (12, NULL, 5, false, NULL);
INSERT INTO public.moon VALUES (13, NULL, 5, false, NULL);
INSERT INTO public.moon VALUES (14, NULL, 5, false, NULL);
INSERT INTO public.moon VALUES (15, NULL, 5, false, NULL);
INSERT INTO public.moon VALUES (16, NULL, 5, false, NULL);
INSERT INTO public.moon VALUES (17, NULL, 5, false, NULL);
INSERT INTO public.moon VALUES (18, NULL, 5, false, NULL);
INSERT INTO public.moon VALUES (19, NULL, 5, false, NULL);
INSERT INTO public.moon VALUES (20, NULL, 5, false, NULL);
INSERT INTO public.moon VALUES (21, NULL, 5, false, NULL);
INSERT INTO public.moon VALUES (22, NULL, 5, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, NULL, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, NULL, 2, 5, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'jkstart', 10, 20, 20, true, false, 1, NULL);
INSERT INTO public.star VALUES (2, 'a', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'b', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'c', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'e', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'f', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'g', 10, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Name: astroid_astroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astroid_astroid_id_seq', 26, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: astroid astroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_name_key UNIQUE (name);


--
-- Name: astroid astroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_pkey PRIMARY KEY (astroid_id);


--
-- Name: galaxy galaxy_letter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_letter_key UNIQUE (letter);


--
-- Name: galaxy galaxy_libgen_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_libgen_key UNIQUE (libgen);


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
-- Name: star star_letter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_letter_key UNIQUE (letter);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: astroid astroid_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- Name: star star_fk_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
