--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-15 10:17:01

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

--
-- TOC entry 4900 (class 0 OID 57643)
-- Dependencies: 217
-- Data for Name: kategorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kategorie (id, nazwa) FROM stdin;
1	Książki
2	Muzyka
3	Filmy
\.


--
-- TOC entry 4901 (class 0 OID 57648)
-- Dependencies: 218
-- Data for Name: ogloszenie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ogloszenie (id, uzytkownik_id, kategoria, tytul, tresc) FROM stdin;
1	1	1	Daniel Craig. Biografia	Biografia Daniela Craiga, niedrogo sprzedam
2	2	1	Buick	Sprzedam horror Stephena Kinga w dobrym stanie
3	1	2	Linkin Park	Sprzedam najnowszy album Linkin Park "From Zero"
4	3	2	Melanie Martinez	Sprzedam album "Cry Baby" - wersja standardowa"
5	2	3	Gwiezdne Wojny	Odstąpię pierwsze wydanie Wojen Gwiezdnych (VHS) 
6	3	3	Władca Pierścieni	Wiecie może gdzie mogę obejrzeć wszystkie części Władcy Pierścieni
\.


--
-- TOC entry 4902 (class 0 OID 57653)
-- Dependencies: 219
-- Data for Name: uzytkownik; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.uzytkownik (id, imie, nazwisko, telefon, email) FROM stdin;
1	Anna	Kowalska	601601601	anna@poczta.pl
2	Jan	Nowak	608348192	jan@poczta.pl
3	Krzysztof	Kowalewski	230185394	krzysztof@poczta.pl
\.


-- Completed on 2025-05-15 10:17:01

--
-- PostgreSQL database dump complete
--

