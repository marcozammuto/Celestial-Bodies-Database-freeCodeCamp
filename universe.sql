--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_year integer,
    planet_types character varying(50),
    galaxy_types character varying(50),
    distance_from_earth integer,
    other numeric
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_year integer,
    planet_types character varying(50),
    galaxy_types character varying(50),
    distance_from_earth integer,
    other numeric
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_year integer,
    planet_types character varying(50),
    galaxy_types character varying(50),
    distance_from_earth integer,
    other numeric,
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_year integer,
    planet_types character varying(50),
    galaxy_types character varying(50),
    distance_from_earth integer,
    other numeric,
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_year integer,
    planet_types character varying(50),
    galaxy_types character varying(50),
    distance_from_earth integer,
    other numeric,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 'Supermassive black hole at the center of the Milky Way', false, true, 13000, 'None', 'Galactic Core', 27000, 1.23);
INSERT INTO public.black_hole VALUES (2, 'Messier 87*', 'Giant elliptical galaxy’s central black hole', false, true, 60000, 'None', 'Galactic Core', 55000000, 2.45);
INSERT INTO public.black_hole VALUES (3, 'Cygnus X-1', 'First black hole discovered in a binary system', false, true, 30000, 'None', 'Stellar', 6100, 3.67);
INSERT INTO public.black_hole VALUES (4, 'V616 Monocerotis', 'Microquasar containing a black hole', false, true, 16000, 'None', 'Stellar', 3000, 4.89);
INSERT INTO public.black_hole VALUES (5, 'V404 Cygni', 'Transient black hole in a binary system', false, true, 20000, 'None', 'Stellar', 7900, 5.67);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, true, 13000, 'Terrestrial', 'Spiral', 0, 1.23);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest spiral galaxy to Milky Way', false, true, 12000, 'Gas Giant', 'Spiral', 2000000, 2.45);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third-largest galaxy in Local Group', false, true, 5000, 'Terrestrial', 'Spiral', 3000000, 3.67);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Massive elliptical galaxy in Virgo Cluster', false, false, 60000, 'Gas Giant', 'Elliptical', 55000000, 4.89);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'Interacting spiral galaxy with a companion', false, true, 30000, 'Terrestrial', 'Spiral', 2300000, 5.67);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Unusual galaxy with a prominent bulge', false, false, 28000, 'Gas Giant', 'Spiral', 29000000, 6.54);
INSERT INTO public.galaxy VALUES (7, 'Bode''s Galaxy', 'Brightest member of M81 Group', false, true, 13000, 'Terrestrial', 'Spiral', 3100000, 7.89);
INSERT INTO public.galaxy VALUES (8, 'Cigar Galaxy', 'Starburst galaxy with intense star formation', false, true, 12000, 'Gas Giant', 'Irregular', 12000000, 8.76);
INSERT INTO public.galaxy VALUES (9, 'Pinwheel Galaxy', 'Face-on spiral galaxy in Ursa Major', false, true, 21000, 'Terrestrial', 'Spiral', 2500000, 9.87);
INSERT INTO public.galaxy VALUES (10, 'Black Eye Galaxy', 'Galaxy known for dark band of absorbing dust', false, true, 30000, 'Gas Giant', 'Spiral', 24000000, 10.98);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth’s natural satellite', false, true, 4500, 'Terrestrial', 'Moon', 384400, 1.2, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars’ larger moon', false, true, 4000, 'Terrestrial', 'Moon', 9377, 2.3, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars’ smaller moon', false, true, 3900, 'Terrestrial', 'Moon', 23460, 3.4, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter’s volcanic moon', false, true, 4200, 'Terrestrial', 'Moon', 421700, 4.5, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter’s icy moon', false, true, 4300, 'Terrestrial', 'Moon', 671034, 5.6, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter’s largest moon', false, true, 4400, 'Terrestrial', 'Moon', 1070412, 6.7, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter’s heavily cratered moon', false, true, 4300, 'Terrestrial', 'Moon', 1882709, 7.8, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn’s largest moon', false, true, 4100, 'Terrestrial', 'Moon', 1221860, 8.9, 4);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Saturn’s second-largest moon', false, true, 4200, 'Terrestrial', 'Moon', 527108, 9.1, 4);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Saturn’s outermost large moon', false, true, 4300, 'Terrestrial', 'Moon', 3560820, 10.2, 4);
INSERT INTO public.moon VALUES (11, 'Miranda', 'Uranus’ smallest spherical moon', false, true, 4100, 'Terrestrial', 'Moon', 129780, 11.3, 5);
INSERT INTO public.moon VALUES (12, 'Ariel', 'Uranus’ fourth-largest moon', false, true, 4200, 'Terrestrial', 'Moon', 191020, 12.4, 5);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'Uranus’ third-largest moon', false, true, 4300, 'Terrestrial', 'Moon', 266000, 13.5, 5);
INSERT INTO public.moon VALUES (14, 'Titania', 'Uranus’ largest moon', false, true, 4400, 'Terrestrial', 'Moon', 435910, 14.6, 5);
INSERT INTO public.moon VALUES (15, 'Triton', 'Neptune’s largest moon', false, true, 4200, 'Terrestrial', 'Moon', 354760, 15.7, 6);
INSERT INTO public.moon VALUES (16, 'Nereid', 'Neptune’s third-largest moon', false, true, 4300, 'Terrestrial', 'Moon', 5513000, 16.8, 6);
INSERT INTO public.moon VALUES (17, 'Charon', 'Pluto’s largest moon', false, true, 4200, 'Terrestrial', 'Moon', 19591, 17.9, 7);
INSERT INTO public.moon VALUES (18, 'Styx', 'Pluto’s smallest moon', false, true, 4300, 'Terrestrial', 'Moon', 42398, 18.1, 7);
INSERT INTO public.moon VALUES (19, 'Nix', 'Pluto’s second-largest moon', false, true, 4400, 'Terrestrial', 'Moon', 48694, 19.2, 7);
INSERT INTO public.moon VALUES (20, 'Kerberos', 'Pluto’s fourth-largest moon', false, true, 4500, 'Terrestrial', 'Moon', 57783, 20.3, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Home to diverse life forms', true, true, 4500, 'Terrestrial', 'Blue Planet', 0, 1.2, 3);
INSERT INTO public.planet VALUES (2, 'Mars', 'Red planet with frozen water', false, true, 4000, 'Terrestrial', 'Red Planet', 0, 2.3, 3);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Largest planet in the solar system', false, true, 5000, 'Gas Giant', 'Jovian', 0, 3.4, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Known for its prominent rings', false, true, 4900, 'Gas Giant', 'Jovian', 0, 4.5, 3);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Blue gas giant with extreme winds', false, true, 5200, 'Gas Giant', 'Ice Giant', 0, 5.6, 3);
INSERT INTO public.planet VALUES (6, 'Pluto', 'Dwarf planet in the Kuiper belt', false, true, 4700, 'Terrestrial', 'Dwarf Planet', 0, 6.7, 2);
INSERT INTO public.planet VALUES (7, 'Mercury', 'Closest planet to the Sun', false, true, 4600, 'Terrestrial', 'Inner Planet', 0, 7.8, 5);
INSERT INTO public.planet VALUES (8, 'Venus', 'Hot and inhospitable planet', false, true, 4400, 'Terrestrial', 'Inner Planet', 0, 8.9, 2);
INSERT INTO public.planet VALUES (9, 'Uranus', 'Blue-green gas giant', false, true, 5100, 'Gas Giant', 'Ice Giant', 0, 9.1, 4);
INSERT INTO public.planet VALUES (10, 'Ganymede', 'Jupiter’s largest moon', false, true, 4200, 'Terrestrial', 'Moon', 0, 10.2, 3);
INSERT INTO public.planet VALUES (11, 'Titan', 'Saturn’s largest moon', false, true, 4100, 'Terrestrial', 'Moon', 0, 11.3, 3);
INSERT INTO public.planet VALUES (12, 'Europa', 'Jupiter’s icy moon', false, true, 4300, 'Terrestrial', 'Moon', 0, 12.4, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our solar system star', true, true, 4500, 'Terrestrial', 'Yellow Dwarf', 0, 1.5, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Brightest star in the night sky', false, true, 23000, 'Gas Giant', 'Main Sequence', 8, 2.8, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'Closest star system to the Sun', false, true, 6000, 'Terrestrial', 'Multiple Star System', 4, 3.9, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'Closest known star to the Sun', false, true, 5000, 'Gas Giant', 'Red Dwarf', 4, 4.2, 1);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 'Red supergiant in Orion constellation', false, false, 80000, 'Gas Giant', 'Supergiant', 640, 5.3, 2);
INSERT INTO public.star VALUES (6, 'Rigel', 'Blue supergiant in Orion constellation', false, false, 90000, 'Gas Giant', 'Supergiant', 860, 6.7, 2);
INSERT INTO public.star VALUES (7, 'Vega', 'Bright star in the northern sky', false, true, 40000, 'Terrestrial', 'Main Sequence', 25, 7.4, 3);
INSERT INTO public.star VALUES (8, 'Polaris', 'North Star', false, true, 25000, 'Gas Giant', 'Cepheid Variable', 433, 8.1, 3);
INSERT INTO public.star VALUES (9, 'Antares', 'Red supergiant in Scorpius constellation', false, false, 60000, 'Gas Giant', 'Supergiant', 550, 9.6, 3);
INSERT INTO public.star VALUES (10, 'Canopus', 'Brightest star in the southern sky', false, true, 30000, 'Terrestrial', 'Giant', 310, 10.5, 4);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: star star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

