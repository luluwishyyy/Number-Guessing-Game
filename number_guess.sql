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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 798, 32);
INSERT INTO public.games VALUES (2, 633, 32);
INSERT INTO public.games VALUES (3, 952, 33);
INSERT INTO public.games VALUES (4, 711, 33);
INSERT INTO public.games VALUES (5, 523, 32);
INSERT INTO public.games VALUES (6, 714, 32);
INSERT INTO public.games VALUES (7, 199, 32);
INSERT INTO public.games VALUES (8, 485, 34);
INSERT INTO public.games VALUES (9, 87, 34);
INSERT INTO public.games VALUES (10, 856, 35);
INSERT INTO public.games VALUES (11, 126, 35);
INSERT INTO public.games VALUES (12, 27, 34);
INSERT INTO public.games VALUES (13, 600, 34);
INSERT INTO public.games VALUES (14, 707, 34);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1666772131230');
INSERT INTO public.users VALUES (2, 'user_1666772131229');
INSERT INTO public.users VALUES (3, 'user_1666772172926');
INSERT INTO public.users VALUES (4, 'user_1666772172925');
INSERT INTO public.users VALUES (5, 'user_1666773208341');
INSERT INTO public.users VALUES (6, 'user_1666773208340');
INSERT INTO public.users VALUES (7, 'user_1666773653826');
INSERT INTO public.users VALUES (8, 'user_1666773653825');
INSERT INTO public.users VALUES (9, 'jj');
INSERT INTO public.users VALUES (10, 'user_1666774406163');
INSERT INTO public.users VALUES (11, 'user_1666774406162');
INSERT INTO public.users VALUES (12, 'user_1666774780763');
INSERT INTO public.users VALUES (13, 'user_1666774780762');
INSERT INTO public.users VALUES (14, 'user_1666774850709');
INSERT INTO public.users VALUES (15, 'user_1666774850708');
INSERT INTO public.users VALUES (16, 'sd');
INSERT INTO public.users VALUES (17, 'user_1666775282265');
INSERT INTO public.users VALUES (18, 'user_1666775282264');
INSERT INTO public.users VALUES (19, 'user_1666775307388');
INSERT INTO public.users VALUES (20, 'user_1666775307387');
INSERT INTO public.users VALUES (21, 'user_1666775316176');
INSERT INTO public.users VALUES (22, 'user_1666775316175');
INSERT INTO public.users VALUES (23, 'user_1666775323492');
INSERT INTO public.users VALUES (24, 'user_1666775323491');
INSERT INTO public.users VALUES (25, 'user_1666775413523');
INSERT INTO public.users VALUES (26, 'user_1666775413522');
INSERT INTO public.users VALUES (27, 'user_1666775423031');
INSERT INTO public.users VALUES (28, 'user_1666775423030');
INSERT INTO public.users VALUES (29, 'user_1666775506369');
INSERT INTO public.users VALUES (30, 'user_1666775506368');
INSERT INTO public.users VALUES (31, 'pp');
INSERT INTO public.users VALUES (32, 'user_1666775624274');
INSERT INTO public.users VALUES (33, 'user_1666775624273');
INSERT INTO public.users VALUES (34, 'user_1666775687913');
INSERT INTO public.users VALUES (35, 'user_1666775687912');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 14, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
