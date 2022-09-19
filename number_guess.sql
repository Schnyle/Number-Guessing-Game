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
-- Name: data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.data (
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.data OWNER TO freecodecamp;

--
-- Data for Name: data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.data VALUES ('user_1663549774482', 2, 1000);
INSERT INTO public.data VALUES ('user_1663549774483', 5, 100000);
INSERT INTO public.data VALUES ('user_1663549786483', 2, 100000);
INSERT INTO public.data VALUES ('user_1663549786484', 5, 100000);
INSERT INTO public.data VALUES ('user_1663549791543', 2, 100000);
INSERT INTO public.data VALUES ('user_1663549791544', 5, 100000);
INSERT INTO public.data VALUES ('k', 1, 100000);
INSERT INTO public.data VALUES ('user_1663549849683', 2, 100000);
INSERT INTO public.data VALUES ('user_1663549849684', 5, 100000);
INSERT INTO public.data VALUES ('jy', 1, NULL);
INSERT INTO public.data VALUES ('ku', 1, 2);
INSERT INTO public.data VALUES ('user_1663550022541', 2, 294);
INSERT INTO public.data VALUES ('user_1663550022542', 5, 390);
INSERT INTO public.data VALUES ('user_1663550043725', 2, 182);
INSERT INTO public.data VALUES ('user_1663550043726', 5, 184);


--
-- PostgreSQL database dump complete
--

