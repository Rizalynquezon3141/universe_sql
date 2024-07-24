--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: definition; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.definition (
    definition_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_types text NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    planet_size integer
);


ALTER TABLE public.definition OWNER TO freecodecamp;

--
-- Name: definition_definition_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.definition_definition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.definition_definition_id_seq OWNER TO freecodecamp;

--
-- Name: definition_definition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.definition_definition_id_seq OWNED BY public.definition.definition_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    galaxy_types text NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    planet_size integer
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
    name character varying(20) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    galaxy_types text NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    planet_size integer,
    planet_id integer
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
    name character varying(20) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_types text NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    planet_size integer,
    star_id integer
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
    has_life boolean,
    is_spherical boolean,
    star_types text NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    planet_size integer,
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
-- Name: definition definition_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.definition ALTER COLUMN definition_id SET DEFAULT nextval('public.definition_definition_id_seq'::regclass);


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
-- Data for Name: definition; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.definition VALUES (1, 'Definition A', true, true, 'Type A', 1234.5, 5000, 10000);
INSERT INTO public.definition VALUES (2, 'Definition B', false, true, 'Type B', 5678.9, 3000, 20000);
INSERT INTO public.definition VALUES (3, 'Definition C', true, false, 'Type C', 987.6, 7000, 15000);
INSERT INTO public.definition VALUES (4, 'Definition D', false, false, 'Type D', 3456.7, 4000, 12000);
INSERT INTO public.definition VALUES (5, 'Definition E', true, true, 'Type E', 2345.8, 6000, 18000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, true, 'Spiral', 0, 13600, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, true, 'Spiral', 2537000, 10000, 220000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, true, 'Spiral', 3000000, 10000, 60000);
INSERT INTO public.galaxy VALUES (4, 'L. Magellanic Cloud', false, true, 'Dwarf', 160000, 13600, 14000);
INSERT INTO public.galaxy VALUES (5, 'S. Magellanic Cloud', false, true, 'Dwarf', 200000, 13600, 7000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', false, true, 'Spiral', 23000000, 600, 76000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon A', false, true, 'Rocky', 0.38, 5, 3474, 19);
INSERT INTO public.moon VALUES (22, 'Moon B', false, true, 'Rocky', 0.72, 5, 3274, 19);
INSERT INTO public.moon VALUES (23, 'Moon C', true, true, 'Rocky', 0.84, 5, 3474, 20);
INSERT INTO public.moon VALUES (24, 'Moon D', false, true, 'Rocky', 0.58, 5, 2320, 20);
INSERT INTO public.moon VALUES (25, 'Moon E', false, true, 'Gas', 0.60, 5, 18000, 21);
INSERT INTO public.moon VALUES (26, 'Moon F', false, true, 'Gas', 1.00, 5, 15000, 21);
INSERT INTO public.moon VALUES (27, 'Moon G', false, true, 'Gas', 0.80, 5, 10000, 22);
INSERT INTO public.moon VALUES (28, 'Moon H', false, true, 'Gas', 0.45, 5, 8500, 22);
INSERT INTO public.moon VALUES (29, 'Moon I', false, true, 'Rocky', 0.85, 5, 5000, 23);
INSERT INTO public.moon VALUES (30, 'Moon J', false, true, 'Rocky', 0.55, 5, 3000, 23);
INSERT INTO public.moon VALUES (31, 'Moon K', false, true, 'Rocky', 0.65, 5, 4000, 24);
INSERT INTO public.moon VALUES (32, 'Moon L', false, true, 'Ice', 0.70, 5, 2500, 24);
INSERT INTO public.moon VALUES (33, 'Moon M', false, true, 'Ice', 0.75, 5, 2700, 25);
INSERT INTO public.moon VALUES (34, 'Moon N', false, true, 'Ice', 0.85, 5, 2900, 25);
INSERT INTO public.moon VALUES (35, 'Moon O', false, true, 'Ice', 0.90, 5, 3000, 26);
INSERT INTO public.moon VALUES (36, 'Moon P', false, true, 'Rocky', 1.00, 5, 3200, 26);
INSERT INTO public.moon VALUES (37, 'Moon Q', false, true, 'Rocky', 0.80, 5, 1500, 27);
INSERT INTO public.moon VALUES (38, 'Moon R', false, true, 'Rocky', 0.60, 5, 1700, 27);
INSERT INTO public.moon VALUES (39, 'Moon S', false, true, 'Rocky', 0.65, 5, 1800, 28);
INSERT INTO public.moon VALUES (40, 'Moon T', false, true, 'Rocky', 0.75, 5, 1900, 28);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (19, 'Mercury', false, true, 'Terrestrial', 57.9, 4500, 4879, 7);
INSERT INTO public.planet VALUES (20, 'Venus', false, true, 'Terrestrial', 108.2, 4500, 12104, 7);
INSERT INTO public.planet VALUES (21, 'Earth', true, true, 'Terrestrial', 0, 4500, 12742, 7);
INSERT INTO public.planet VALUES (22, 'Mars', false, true, 'Terrestrial', 225.3, 4500, 6779, 7);
INSERT INTO public.planet VALUES (23, 'Jupiter', false, true, 'Gas Giant', 778.5, 4500, 139820, 7);
INSERT INTO public.planet VALUES (24, 'Saturn', false, true, 'Gas Giant', 1427.0, 4500, 116460, 7);
INSERT INTO public.planet VALUES (25, 'Uranus', false, true, 'Ice Giant', 2871.0, 4500, 50724, 7);
INSERT INTO public.planet VALUES (26, 'Neptune', false, true, 'Ice Giant', 4497.1, 4500, 49244, 7);
INSERT INTO public.planet VALUES (27, 'Kepler-22b', false, true, 'Super-Earth', 600, 6000, 28000, 8);
INSERT INTO public.planet VALUES (28, 'Proxima Centauri b', false, true, 'Terrestrial', 4.24, 6000, 11488, 9);
INSERT INTO public.planet VALUES (29, 'Alpha Centauri Bb', false, true, 'Terrestrial', 4.37, 5000, 11200, 10);
INSERT INTO public.planet VALUES (30, 'Sirius b', false, true, 'Terrestrial', 8.6, 300, 5000, 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Sun', true, true, 'G-type', 0, 4500, 1, 1);
INSERT INTO public.star VALUES (8, 'Proxima Centauri', false, true, 'M-type', 4.24, 4500, 1, 1);
INSERT INTO public.star VALUES (9, 'Alpha Centauri A', false, true, 'G-type', 4.37, 5000, 1, 1);
INSERT INTO public.star VALUES (10, 'Alpha Centauri B', false, true, 'K-type', 4.37, 5000, 1, 1);
INSERT INTO public.star VALUES (11, 'Betelgeuse', false, true, 'M-type', 642.5, 10000, 1000, 1);
INSERT INTO public.star VALUES (12, 'Sirius', false, true, 'A-type', 8.6, 300, 2, 1);


--
-- Name: definition_definition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.definition_definition_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 30, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: definition definition_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.definition
    ADD CONSTRAINT definition_name_key UNIQUE (name);


--
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (definition_id);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

