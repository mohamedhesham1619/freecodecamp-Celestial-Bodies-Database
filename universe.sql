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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    has_life boolean,
    galaxy_id integer NOT NULL,
    planets_number integer,
    stars_number integer
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
    age_in_millions_of_years integer,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL,
    distance_from_earth numeric(4,2)
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean,
    planet_id integer NOT NULL,
    age_in_millions_of_years integer
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    planet_types_id integer NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    age_in_millions_of_years integer,
    is_spherical text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('g1', true, 1, 1, 1);
INSERT INTO public.galaxy VALUES ('g2', true, 2, 2, 2);
INSERT INTO public.galaxy VALUES ('g3', true, 3, 3, 3);
INSERT INTO public.galaxy VALUES ('g4', true, 4, 4, 4);
INSERT INTO public.galaxy VALUES ('g5', true, 5, 5, 5);
INSERT INTO public.galaxy VALUES ('g6', true, 6, 6, 6);
INSERT INTO public.galaxy VALUES ('g3', true, 7, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 8, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 9, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 10, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 11, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 12, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 13, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 14, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 15, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 16, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 17, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 18, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 19, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 20, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 21, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 22, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 23, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 24, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 25, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 26, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 27, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 28, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 29, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 30, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 31, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 32, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 33, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 34, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 35, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 36, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 37, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 38, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 39, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 40, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 41, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 42, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 43, 3, 3);
INSERT INTO public.galaxy VALUES ('g3', true, 44, 3, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'm1', 1, 1, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 2, 2, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 3, 3, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 4, 4, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 5, 5, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 6, 6, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 11, 11, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 12, 12, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 13, 13, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 14, 14, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 15, 15, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 16, 16, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 17, 17, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 18, 18, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 19, 19, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 20, 20, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 21, 21, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 22, 22, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 23, 23, 3.00);
INSERT INTO public.moon VALUES (3, 'm1', 24, 24, 3.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('p1', 1, false, 1, 1);
INSERT INTO public.planet VALUES ('p2', 2, false, 2, 2);
INSERT INTO public.planet VALUES ('p3', 3, false, 3, 3);
INSERT INTO public.planet VALUES ('p4', 4, false, 4, 4);
INSERT INTO public.planet VALUES ('p5', 5, false, 5, 5);
INSERT INTO public.planet VALUES ('p6', 6, false, 6, 6);
INSERT INTO public.planet VALUES ('p2', 11, false, 11, 2);
INSERT INTO public.planet VALUES ('p2', 12, false, 12, 2);
INSERT INTO public.planet VALUES ('p2', 13, false, 13, 2);
INSERT INTO public.planet VALUES ('p2', 14, false, 14, 2);
INSERT INTO public.planet VALUES ('p2', 15, false, 15, 2);
INSERT INTO public.planet VALUES ('p2', 16, false, 16, 2);
INSERT INTO public.planet VALUES ('p2', 17, false, 17, 2);
INSERT INTO public.planet VALUES ('p2', 18, false, 18, 2);
INSERT INTO public.planet VALUES ('p2', 19, false, 19, 2);
INSERT INTO public.planet VALUES ('p2', 20, false, 20, 2);
INSERT INTO public.planet VALUES ('p2', 21, false, 21, 2);
INSERT INTO public.planet VALUES ('p2', 22, false, 22, 2);
INSERT INTO public.planet VALUES ('p2', 23, false, 23, 2);
INSERT INTO public.planet VALUES ('p2', 24, false, 24, 2);
INSERT INTO public.planet VALUES ('p2', 35, false, 35, 2);
INSERT INTO public.planet VALUES ('p2', 36, false, 36, 2);
INSERT INTO public.planet VALUES ('p2', 37, false, 37, 2);
INSERT INTO public.planet VALUES ('p2', 38, false, 38, 2);
INSERT INTO public.planet VALUES ('p2', 39, false, 39, 2);
INSERT INTO public.planet VALUES ('p2', 40, false, 40, 2);
INSERT INTO public.planet VALUES ('p2', 41, false, 41, 2);
INSERT INTO public.planet VALUES ('p2', 42, false, 42, 2);
INSERT INTO public.planet VALUES ('p2', 43, false, 43, 2);
INSERT INTO public.planet VALUES ('p2', 44, false, 44, 2);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES ('pl1', 1, 1);
INSERT INTO public.planet_types VALUES ('pl1', 1, 2);
INSERT INTO public.planet_types VALUES ('pl1', 1, 3);
INSERT INTO public.planet_types VALUES ('pl1', 1, 4);
INSERT INTO public.planet_types VALUES ('pl1', 1, 5);
INSERT INTO public.planet_types VALUES ('pl1', 1, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('s1', 1, 1, 1, 'TRUE');
INSERT INTO public.star VALUES ('s2', 2, 2, 2, 'TRUE');
INSERT INTO public.star VALUES ('s4', 3, 3, 3, 'TRUE');
INSERT INTO public.star VALUES ('s3', 4, 4, 4, 'TRUE');
INSERT INTO public.star VALUES ('s5', 5, 5, 5, 'TRUE');
INSERT INTO public.star VALUES ('s6', 6, 6, 6, 'TRUE');
INSERT INTO public.star VALUES ('s6', 8, 8, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 9, 9, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 10, 10, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 11, 11, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 12, 12, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 13, 13, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 14, 14, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 15, 15, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 16, 16, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 17, 17, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 18, 18, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 19, 19, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 20, 20, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 21, 21, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 22, 22, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 23, 23, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 24, 24, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 26, 26, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 27, 27, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 28, 28, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 29, 29, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 30, 30, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 31, 31, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 32, 32, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 33, 33, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 34, 34, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 35, 35, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 36, 36, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 37, 37, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 38, 38, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 39, 39, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 40, 40, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 41, 41, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 42, 42, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 43, 43, 7, 'TRUE');
INSERT INTO public.star VALUES ('s6', 44, 44, 7, 'TRUE');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 44, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 47, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 47, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 6, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 46, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 46, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_planet_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_types_id_key UNIQUE (planet_types_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

