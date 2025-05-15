--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-15 10:55:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 217 (class 1259 OID 57643)
-- Name: kategorie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kategorie (
    id integer NOT NULL,
    nazwa character varying(20)
);


ALTER TABLE public.kategorie OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 57648)
-- Name: ogloszenie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ogloszenie (
    id integer NOT NULL,
    uzytkownik_id integer NOT NULL,
    kategoria integer NOT NULL,
    tytul character varying(40) NOT NULL,
    tresc character varying(300) NOT NULL
);


ALTER TABLE public.ogloszenie OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 57653)
-- Name: uzytkownik; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uzytkownik (
    id integer NOT NULL,
    imie character varying(30) NOT NULL,
    nazwisko character varying(30) NOT NULL,
    telefon integer NOT NULL,
    email character varying(30) NOT NULL
);


ALTER TABLE public.uzytkownik OWNER TO postgres;

--
-- TOC entry 4900 (class 0 OID 57643)
-- Dependencies: 217
-- Data for Name: kategorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kategorie VALUES (1, 'Książki');
INSERT INTO public.kategorie VALUES (2, 'Muzyka');
INSERT INTO public.kategorie VALUES (3, 'Filmy');


--
-- TOC entry 4901 (class 0 OID 57648)
-- Dependencies: 218
-- Data for Name: ogloszenie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ogloszenie VALUES (1, 1, 1, 'Daniel Craig. Biografia', 'Biografia Daniela Craiga, niedrogo sprzedam');
INSERT INTO public.ogloszenie VALUES (2, 2, 1, 'Buick', 'Sprzedam horror Stephena Kinga w dobrym stanie');
INSERT INTO public.ogloszenie VALUES (3, 1, 2, 'Linkin Park', 'Sprzedam najnowszy album Linkin Park "From Zero"');
INSERT INTO public.ogloszenie VALUES (4, 3, 2, 'Melanie Martinez', 'Sprzedam album "Cry Baby" - wersja standardowa"');
INSERT INTO public.ogloszenie VALUES (5, 2, 3, 'Gwiezdne Wojny', 'Odstąpię pierwsze wydanie Wojen Gwiezdnych (VHS) ');
INSERT INTO public.ogloszenie VALUES (6, 3, 3, 'Władca Pierścieni', 'Wiecie może gdzie mogę obejrzeć wszystkie części Władcy Pierścieni');


--
-- TOC entry 4902 (class 0 OID 57653)
-- Dependencies: 219
-- Data for Name: uzytkownik; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.uzytkownik VALUES (1, 'Anna', 'Kowalska', 601601601, 'anna@poczta.pl');
INSERT INTO public.uzytkownik VALUES (2, 'Jan', 'Nowak', 608348192, 'jan@poczta.pl');
INSERT INTO public.uzytkownik VALUES (3, 'Krzysztof', 'Kowalewski', 230185394, 'krzysztof@poczta.pl');


--
-- TOC entry 4750 (class 2606 OID 57647)
-- Name: kategorie kategorie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kategorie
    ADD CONSTRAINT kategorie_pkey PRIMARY KEY (id);


--
-- TOC entry 4752 (class 2606 OID 57652)
-- Name: ogloszenie ogloszenie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ogloszenie
    ADD CONSTRAINT ogloszenie_pkey PRIMARY KEY (id);


--
-- TOC entry 4754 (class 2606 OID 57657)
-- Name: uzytkownik uzytkownik_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uzytkownik
    ADD CONSTRAINT uzytkownik_pkey PRIMARY KEY (id);


-- Completed on 2025-05-15 10:55:11

--
-- PostgreSQL database dump complete
--

