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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (103, 2018, 'Final', 1, 2, 4, 2);
INSERT INTO public.games VALUES (104, 2018, 'Third Place', 3, 4, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Semi-Final', 2, 4, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Semi-Final', 1, 3, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Quarter-Final', 2, 5, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Quarter-Final', 4, 6, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Quarter-Final', 3, 7, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Quarter-Final', 1, 8, 2, 0);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 4, 9, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 6, 10, 1, 0);
INSERT INTO public.games VALUES (113, 2018, 'Eighth-Final', 3, 11, 3, 2);
INSERT INTO public.games VALUES (114, 2018, 'Eighth-Final', 7, 12, 2, 0);
INSERT INTO public.games VALUES (115, 2018, 'Eighth-Final', 2, 13, 2, 1);
INSERT INTO public.games VALUES (116, 2018, 'Eighth-Final', 5, 14, 2, 1);
INSERT INTO public.games VALUES (117, 2018, 'Eighth-Final', 8, 15, 2, 1);
INSERT INTO public.games VALUES (118, 2018, 'Eighth-Final', 1, 16, 4, 3);
INSERT INTO public.games VALUES (119, 2014, 'Final', 17, 16, 1, 0);
INSERT INTO public.games VALUES (120, 2014, 'Third Place', 18, 7, 3, 0);
INSERT INTO public.games VALUES (121, 2014, 'Semi-Final', 16, 18, 1, 0);
INSERT INTO public.games VALUES (122, 2014, 'Semi-Final', 17, 7, 7, 1);
INSERT INTO public.games VALUES (123, 2014, 'Quarter-Final', 18, 19, 1, 0);
INSERT INTO public.games VALUES (124, 2014, 'Quarter-Final', 16, 3, 1, 0);
INSERT INTO public.games VALUES (125, 2014, 'Quarter-Final', 7, 9, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Quarter-Final', 17, 1, 1, 0);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 7, 20, 2, 1);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 9, 8, 2, 0);
INSERT INTO public.games VALUES (129, 2014, 'Eighth-Final', 1, 21, 2, 0);
INSERT INTO public.games VALUES (130, 2014, 'Eighth-Final', 17, 22, 2, 1);
INSERT INTO public.games VALUES (131, 2014, 'Eighth-Final', 18, 12, 2, 1);
INSERT INTO public.games VALUES (132, 2014, 'Eighth-Final', 19, 23, 2, 1);
INSERT INTO public.games VALUES (133, 2014, 'Eighth-Final', 16, 10, 1, 0);
INSERT INTO public.games VALUES (134, 2014, 'Eighth-Final', 3, 24, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (2, 'Croatia');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (4, 'England');
INSERT INTO public.teams VALUES (5, 'Russia');
INSERT INTO public.teams VALUES (6, 'Sweden');
INSERT INTO public.teams VALUES (7, 'Brazil');
INSERT INTO public.teams VALUES (8, 'Uruguay');
INSERT INTO public.teams VALUES (9, 'Colombia');
INSERT INTO public.teams VALUES (10, 'Switzerland');
INSERT INTO public.teams VALUES (11, 'Japan');
INSERT INTO public.teams VALUES (12, 'Mexico');
INSERT INTO public.teams VALUES (13, 'Denmark');
INSERT INTO public.teams VALUES (14, 'Spain');
INSERT INTO public.teams VALUES (15, 'Portugal');
INSERT INTO public.teams VALUES (16, 'Argentina');
INSERT INTO public.teams VALUES (17, 'Germany');
INSERT INTO public.teams VALUES (18, 'Netherlands');
INSERT INTO public.teams VALUES (19, 'Costa Rica');
INSERT INTO public.teams VALUES (20, 'Chile');
INSERT INTO public.teams VALUES (21, 'Nigeria');
INSERT INTO public.teams VALUES (22, 'Algeria');
INSERT INTO public.teams VALUES (23, 'Greece');
INSERT INTO public.teams VALUES (24, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 134, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

