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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50),
    is_potentially_hazardous boolean,
    mass numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asterioid_ateroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asterioid_ateroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asterioid_ateroid_id_seq OWNER TO freecodecamp;

--
-- Name: asterioid_ateroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asterioid_ateroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    is_active boolean NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth numeric,
    number_of_stars integer,
    age_in_millions_years integer,
    is_visible_with_naked_eye boolean,
    description text
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
    name character varying(100) NOT NULL,
    surface_temperature integer,
    number_of_volcanoes integer,
    radius numeric,
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
    name character varying(100) NOT NULL,
    has_life boolean,
    has_rings boolean,
    number_of_moons integer,
    surface_temperature integer,
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
    name character varying(100) NOT NULL,
    age integer,
    mass numeric,
    has_planets boolean,
    is_variable_star boolean,
    number_of_planets integer,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asterioid_ateroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 'Dwarf Planet', false, 939.4);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 'Asteroid', false, 525.4);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 'Asteroid', false, 512.0);
INSERT INTO public.asteroid VALUES (4, 'Apophis', 'Near-Earth Object', true, 0.375);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, true, 'Milky Way', 0, 100000, 1350, false, 'This is a descrption for Milky Way');
INSERT INTO public.galaxy VALUES (3, true, 'Andromeda', 23, 100000, 1350, false, 'This is a descrption for Andromeda');
INSERT INTO public.galaxy VALUES (4, true, 'Triangulum', 30000, 100000, 1350, false, 'This is a descrption for Triangulum');
INSERT INTO public.galaxy VALUES (5, true, 'Messier 87', 40000, 200000, 1356, true, 'This is a descrption for Messier 87');
INSERT INTO public.galaxy VALUES (6, false, 'Whirlpool', 23000, 25100000, 1350, false, 'This is a descrption for AnWhirlpool');
INSERT INTO public.galaxy VALUES (7, true, 'Sombrero', 31000, 2600000, 1350, false, 'This is a descrption for Sombrero');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 220, 0, 1737.4, 3);
INSERT INTO public.moon VALUES (2, 'Io', 130, 400, 1821.6, 5);
INSERT INTO public.moon VALUES (3, 'Europa', 102, 0, 1560.8, 5);
INSERT INTO public.moon VALUES (4, 'Ganymede', 110, 0, 2634.1, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 134, 0, 2410.3, 5);
INSERT INTO public.moon VALUES (6, 'Titan', 94, 0, 2575.5, 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', 75, 0, 52.1, 6);
INSERT INTO public.moon VALUES (8, 'Mimas', 72, 0, 198.2, 6);
INSERT INTO public.moon VALUES (9, 'Iapetus', 90, 0, 734.5, 6);
INSERT INTO public.moon VALUES (10, 'Rhea', 99, 0, 763.8, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 87, 0, 561.4, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', 86, 0, 531.1, 6);
INSERT INTO public.moon VALUES (13, 'Miranda', 60, 0, 235.8, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', 60, 0, 578.9, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', 60, 0, 584.7, 7);
INSERT INTO public.moon VALUES (16, 'Titania', 60, 0, 788.9, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', 60, 0, 761.4, 7);
INSERT INTO public.moon VALUES (18, 'Triton', 34, 0, 1353.4, 8);
INSERT INTO public.moon VALUES (19, 'Nereid', 40, 0, 170, 8);
INSERT INTO public.moon VALUES (20, 'Proteus', 50, 0, 210, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, false, 0, 340, 2);
INSERT INTO public.planet VALUES (3, 'Venus', false, false, 0, 737, 2);
INSERT INTO public.planet VALUES (4, 'Earth', true, false, 1, 288, 2);
INSERT INTO public.planet VALUES (5, 'Mars', false, false, 2, 210, 2);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, true, 79, 165, 2);
INSERT INTO public.planet VALUES (7, 'Saturn', false, true, 82, 134, 2);
INSERT INTO public.planet VALUES (8, 'Uranus', false, true, 27, 76, 2);
INSERT INTO public.planet VALUES (9, 'Neptune', false, true, 14, 72, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', false, false, 0, 234, 3);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri c', false, false, 0, 160, 3);
INSERT INTO public.planet VALUES (12, 'Alpheratz I', false, true, 0, 160, 4);
INSERT INTO public.planet VALUES (13, 'Rigel I', false, false, 2, 300, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUNS', 4, 1.0, true, false, 8, 2);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4, 0.12, true, false, 1, 2);
INSERT INTO public.star VALUES (3, 'Alpheratz', 1, 2.3, false, true, 0, 3);
INSERT INTO public.star VALUES (4, 'Beta Adromedae', 3, 2.1, false, false, 0, 3);
INSERT INTO public.star VALUES (5, 'Sirius', 1, 4.0, false, false, 0, 4);
INSERT INTO public.star VALUES (6, 'Rigel', 8, 18, false, false, 0, 5);


--
-- Name: asterioid_ateroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asterioid_ateroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asterioid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asterioid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


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
-- Name: moon moon_plantet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_plantet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

