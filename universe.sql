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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    name character varying(30),
    height numeric(3,2) NOT NULL,
    weight integer NOT NULL,
    personal_rating integer NOT NULL
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_alien_id_seq OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    distance_from_our_galaxy integer,
    diameter_in_ly integer NOT NULL,
    description text NOT NULL
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
    name character varying(30),
    distance_from_planet integer,
    size_in_km integer NOT NULL,
    planet_id integer,
    description text NOT NULL
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
    name character varying(30),
    distance_from_sun_in_km integer,
    diameter_in_km integer NOT NULL,
    star_id integer,
    has_life boolean,
    is_spherical boolean,
    description text NOT NULL
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
    name character varying(30),
    distance_from_earth integer,
    size_in_miles integer NOT NULL,
    galaxy_id integer,
    description text NOT NULL
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
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.alien_alien_id_seq'::regclass);


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
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 'Fat one', 1.55, 200, 7);
INSERT INTO public.alien VALUES (2, 'Tall dude', 2.20, 80, 9);
INSERT INTO public.alien VALUES (3, 'Big boy', 2.03, 120, 8);
INSERT INTO public.alien VALUES (4, 'scary thing', 1.97, 84, 10);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 100000, 'milky way description');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2500000, 220000, 'Andromeda descripton');
INSERT INTO public.galaxy VALUES (3, 'Cigar galaxy', 11500000, 37000, 'cigar description');
INSERT INTO public.galaxy VALUES (4, 'Pinwheel galaxy', 20870000, 170000, 'pinwheel description');
INSERT INTO public.galaxy VALUES (5, 'Sombrero galaxy', 29350000, 50000, 'sombrero galaxy');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool galaxy', 30000000, 60000, 'whirlpool description');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (8, 'Moon_a1.1', 100, 2000, 9, 'description');
INSERT INTO public.moon VALUES (9, 'Moon_a1.2', 100, 2000, 9, 'description');
INSERT INTO public.moon VALUES (10, 'Moon_a1.3', 100, 2000, 9, 'description');
INSERT INTO public.moon VALUES (11, 'Moon_a2.1', 100, 2000, 10, 'description');
INSERT INTO public.moon VALUES (12, 'Moon_a3.1', 100, 2000, 11, 'description');
INSERT INTO public.moon VALUES (13, 'Moon_a3.2', 100, 2000, 11, 'description');
INSERT INTO public.moon VALUES (14, 'Moon_a3.3', 100, 2000, 11, 'description');
INSERT INTO public.moon VALUES (15, 'Moon_a3.4', 100, 2000, 11, 'description');
INSERT INTO public.moon VALUES (16, 'Moon_a4.1', 100, 2000, 12, 'description');
INSERT INTO public.moon VALUES (17, 'Moon_a4.2', 100, 2000, 12, 'description');
INSERT INTO public.moon VALUES (18, 'Moon4.3', 100, 2000, 12, 'description');
INSERT INTO public.moon VALUES (19, 'Moon_a4.4', 100, 2000, 12, 'description');
INSERT INTO public.moon VALUES (20, 'Moon_a4.5', 100, 2000, 12, 'description');
INSERT INTO public.moon VALUES (21, 'Moon_a4.6', 100, 2000, 12, 'description');
INSERT INTO public.moon VALUES (22, 'Moon_a4.7', 100, 2000, 12, 'description');
INSERT INTO public.moon VALUES (23, 'Moon_a4.8', 100, 2000, 12, 'description');
INSERT INTO public.moon VALUES (24, 'Moon_a4.9', 100, 2000, 12, 'description');
INSERT INTO public.moon VALUES (25, 'Moon_a4.10', 100, 2000, 12, 'description');
INSERT INTO public.moon VALUES (26, 'Moon_a4.11', 100, 2000, 12, 'description');
INSERT INTO public.moon VALUES (27, 'Moon_a4.12', 100, 2000, 12, 'description');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 149000000, 12756, 1, true, true, 'earth description');
INSERT INTO public.planet VALUES (2, 'Mercury', 57000000, 4879, 1, false, true, 'mercury description');
INSERT INTO public.planet VALUES (3, 'Mars', 227000000, 6779, 1, false, true, 'mars description');
INSERT INTO public.planet VALUES (4, 'Venus', 108000000, 12104, 1, false, true, 'venus description');
INSERT INTO public.planet VALUES (5, 'Neptune', 449700000, 49528, 1, false, true, 'neptune description');
INSERT INTO public.planet VALUES (6, 'Uranus', 287100000, 51118, 1, false, true, 'uranus description');
INSERT INTO public.planet VALUES (7, 'Saturn', 142700000, 120660, 1, false, true, 'saturn description');
INSERT INTO public.planet VALUES (8, 'Jupiter', 778000000, 142800, 1, false, true, 'jupiter description');
INSERT INTO public.planet VALUES (9, 'Alpha_1', 500000000, 15000, 1, false, true, 'fictional');
INSERT INTO public.planet VALUES (10, 'Alpha_2', 500000000, 15000, 1, false, true, 'fictional');
INSERT INTO public.planet VALUES (11, 'Alpha_3', 500000000, 15000, 1, false, true, 'fictional');
INSERT INTO public.planet VALUES (12, 'Alpha_4', 500000000, 45000, 1, true, false, 'not fictional');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 864000, 1, 'sun description');
INSERT INTO public.star VALUES (2, 'Betelgeuse', 642, 767000000, 1, 'betelgeuse description');
INSERT INTO public.star VALUES (3, 'Antares', 554, 587817147, 1, 'antares description');
INSERT INTO public.star VALUES (4, 'Altair', 16, 1600000, 1, 'altair description');
INSERT INTO public.star VALUES (5, 'Pollux', 33, 8640000, 1, 'pollux description');
INSERT INTO public.star VALUES (6, 'Formalhaut', 25, 1500000, 1, 'formalhaut description');


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: alien alien_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_name_key UNIQUE (name);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


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
