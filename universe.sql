
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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(30),
    age_in_millions_of_years integer,
    diameter integer
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
    is_spherical boolean DEFAULT true,
    planet_id integer,
    water_presence boolean
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
    has_life boolean DEFAULT false,
    planet_types character varying(30),
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
-- Name: space_agencies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_agencies (
    space_agencies_id integer NOT NULL,
    name character varying(100) NOT NULL,
    country text
);


ALTER TABLE public.space_agencies OWNER TO freecodecamp;

--
-- Name: space_agencies_agency_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_agencies_agency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_agencies_agency_id_seq OWNER TO freecodecamp;

--
-- Name: space_agencies_agency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_agencies_agency_id_seq OWNED BY public.space_agencies.space_agencies_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_types character varying(20),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
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
-- Name: space_agencies space_agencies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_agencies ALTER COLUMN space_agencies_id SET DEFAULT nextval('public.space_agencies_agency_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 13600, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10000, 220000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum M33', 'Spiral', 13000, 60000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool M51', 'Spiral', 6000, 60000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero M104', 'Spiral', 12800, 30000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel M101', 'Spiral', NULL, 170000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 3, false);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4, false);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4, false);
INSERT INTO public.moon VALUES (4, 'Io', true, 5, false);
INSERT INTO public.moon VALUES (9, 'Rhea', true, 6, false);
INSERT INTO public.moon VALUES (10, 'Iapetus', true, 6, false);
INSERT INTO public.moon VALUES (11, 'Dione', true, 6, false);
INSERT INTO public.moon VALUES (12, 'Tethys', true, 6, false);
INSERT INTO public.moon VALUES (14, 'Mimas', true, 6, false);
INSERT INTO public.moon VALUES (15, 'Miranda', true, 7, false);
INSERT INTO public.moon VALUES (16, 'Ariel', true, 7, false);
INSERT INTO public.moon VALUES (17, 'Umbriel', true, 7, false);
INSERT INTO public.moon VALUES (18, 'Titania', true, 7, false);
INSERT INTO public.moon VALUES (19, 'Oberon', true, 7, false);
INSERT INTO public.moon VALUES (5, 'Europa', true, 5, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 5, true);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 5, true);
INSERT INTO public.moon VALUES (8, 'Titan', true, 6, true);
INSERT INTO public.moon VALUES (13, 'Enceladus', true, 6, true);
INSERT INTO public.moon VALUES (20, 'Triton', true, 8, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', NULL, 'Terrestrial', 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', NULL, 'Terrestrial', 2);
INSERT INTO public.planet VALUES (11, '55 Cancri e', false, 'Super-Earth', 9);
INSERT INTO public.planet VALUES (12, 'Gliese 581d', false, 'Super-Earth', 10);


--
-- Data for Name: space_agencies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_agencies VALUES (1, 'NASA', 'United States');
INSERT INTO public.space_agencies VALUES (2, 'Roscosmos', 'Russia');
INSERT INTO public.space_agencies VALUES (3, 'ESA', 'European Union');
INSERT INTO public.space_agencies VALUES (4, 'CNSA', 'China');
INSERT INTO public.space_agencies VALUES (5, 'ISRO', 'India');
INSERT INTO public.space_agencies VALUES (6, 'JAXA', 'Japan');
INSERT INTO public.space_agencies VALUES (7, 'SpaceX', 'United States');
INSERT INTO public.space_agencies VALUES (8, 'Blue Origin', 'United States');
INSERT INTO public.space_agencies VALUES (9, 'Arianespace', 'France');
INSERT INTO public.space_agencies VALUES (10, 'Canadian Space Agency', 'Canada');
INSERT INTO public.space_agencies VALUES (11, 'UK Space Agency', 'United Kingdom');
INSERT INTO public.space_agencies VALUES (12, 'ASI', 'Italy');
INSERT INTO public.space_agencies VALUES (13, 'DLR', 'Germany');
INSERT INTO public.space_agencies VALUES (14, 'CNES', 'France');
INSERT INTO public.space_agencies VALUES (15, 'KARI', 'South Korea');
INSERT INTO public.space_agencies VALUES (16, 'UAE Space Agency', 'United Arab Emirates');
INSERT INTO public.space_agencies VALUES (17, 'INPE', 'Brazil');
INSERT INTO public.space_agencies VALUES (18, 'CONAE', 'Argentina');
INSERT INTO public.space_agencies VALUES (19, 'ANGKASA', 'Malaysia');
INSERT INTO public.space_agencies VALUES (20, 'Turkish Space Agency', 'Turkey');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow Dwarf', 4600, 1, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'Orange Dwarf', 5400, 4.37, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 'Main Sequence', 242, 8.6, 1);
INSERT INTO public.star VALUES (6, 'M31 RV', 'Red Variable', NULL, 2.537, 2);
INSERT INTO public.star VALUES (7, 'M33 X-7', 'Black Hole w Star', NULL, 273, 3);
INSERT INTO public.star VALUES (8, 'Sher 25', 'Blue Supergiant', NULL, 0.02, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red Dwarf', 4500, 4.246, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'Yellow Dwarf', 5400, 4.37, 1);
INSERT INTO public.star VALUES (9, '55 Cancri', 'Yellow Dwarf', 10200, 40, 1);
INSERT INTO public.star VALUES (10, 'Gliese 581', 'Red Dwarf', NULL, 20.4, 1);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_agencies_agency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_agencies_agency_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: space_agencies agency_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_agencies
    ADD CONSTRAINT agency_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_agencies space_agencies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_agencies
    ADD CONSTRAINT space_agencies_pkey PRIMARY KEY (space_agencies_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
