--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

-- Started on 2018-02-08 16:39:46

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 222 (class 1255 OID 24618)
-- Name: insert_cantn(text, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION insert_cantn(canton text, idprovincia integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
	begin

		INSERT INTO public.canton(idcanton,canton,idprovincia) VALUES (default, canton,idprovincia );
    end;
  $$;


ALTER FUNCTION public.insert_cantn(canton text, idprovincia integer) OWNER TO postgres;

--
-- TOC entry 224 (class 1255 OID 24620)
-- Name: insert_nacnld(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION insert_nacnld(pais text, nacionalidad text) RETURNS void
    LANGUAGE plpgsql
    AS $$
	begin

		INSERT INTO public.nacionalidad(idnacionalidad,pais,nacionalidad) VALUES (default, pais,nacionalidad);
    end;
  $$;


ALTER FUNCTION public.insert_nacnld(pais text, nacionalidad text) OWNER TO postgres;

--
-- TOC entry 220 (class 1255 OID 24631)
-- Name: insert_oprd(text, text, text, integer, text, text, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION insert_oprd(nmboprdr text, aplldoprdr text, cargo text, estoprdr integer, useroprdr text, passoprdr text, cdloperador integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
	begin

		INSERT INTO public.operador(idoperador,nmboprdr, aplldoprdr, cargo, estoprdr, useroprdr, passoprdr,cdloperador) 
        VALUES (default,nmboprdr, aplldoprdr, cargo, estoprdr, useroprdr, passoprdr,cdloperador);
    end;
  $$;


ALTER FUNCTION public.insert_oprd(nmboprdr text, aplldoprdr text, cargo text, estoprdr integer, useroprdr text, passoprdr text, cdloperador integer) OWNER TO postgres;

--
-- TOC entry 213 (class 1255 OID 32834)
-- Name: insert_paciente(integer, text, text, text, text, date, integer, integer, text, integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION insert_paciente(cedpacnt integer, nmbpacnt text, aplldpacnt text, drcnpacnt text, sexpacnt text, fchnctpacnt date, tlfpacnt1 integer, tlfpacnt2 integer, tpsngre text, idparroquia integer, idnacionalidad integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
	INSERT INTO public.paciente(idpaciente, cedpacnt, nmbpacnt, aplldpacnt, drcnpacnt, sexpacnt, 
                                fchnctpacnt, tlfpacnt1, tlfpacnt2, tpsngre, idparroquia, idnacionalidad)
	VALUES (default,cedpacnt, nmbpacnt, aplldpacnt, drcnpacnt, sexpacnt, 
                                fchnctpacnt, tlfpacnt1, tlfpacnt2, tpsngre, idparroquia, idnacionalidad);

end;
$$;


ALTER FUNCTION public.insert_paciente(cedpacnt integer, nmbpacnt text, aplldpacnt text, drcnpacnt text, sexpacnt text, fchnctpacnt date, tlfpacnt1 integer, tlfpacnt2 integer, tpsngre text, idparroquia integer, idnacionalidad integer) OWNER TO postgres;

--
-- TOC entry 229 (class 1255 OID 24619)
-- Name: insert_parrq(text, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION insert_parrq(parrq text, idparroquia integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
	begin

		INSERT INTO public.parroquia(idparroquia,parroquia,idcanton) VALUES (default, parrq,idparroquia);
    end;
  $$;


ALTER FUNCTION public.insert_parrq(parrq text, idparroquia integer) OWNER TO postgres;

--
-- TOC entry 219 (class 1255 OID 24617)
-- Name: insert_prv(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION insert_prv(provincia text) RETURNS void
    LANGUAGE plpgsql
    AS $$
	begin

		INSERT INTO public.provincia(idprovincia, provincia) VALUES (default, provincia );
    end;
  $$;


ALTER FUNCTION public.insert_prv(provincia text) OWNER TO postgres;

--
-- TOC entry 218 (class 1255 OID 24632)
-- Name: insert_rfenc(integer, text, text, text, integer, integer, text, text, text, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION insert_rfenc(cedrefnc integer, nmbrefnc text, apllrefnc text, drcnrefnc text, tlfrefnc integer, celrefnc integer, tprefnc text, ocurefnc text, instcrefnc text, idpaciente integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
	begin

		INSERT INTO public.operador(idreferencia, cedrefnc, nmbrefnc, apllrefnc, drcnrefnc, tlfrefnc, celrefnc, tprefnc, 
                                   ocurefnc, instcrefnc, idpaciente) 
        VALUES (default,cedrefnc, nmbrefnc, apllrefnc, drcnrefnc, tlfrefnc, celrefnc, tprefnc, 
                                   ocurefnc, instcrefnc, idpaciente);
    end;
  $$;


ALTER FUNCTION public.insert_rfenc(cedrefnc integer, nmbrefnc text, apllrefnc text, drcnrefnc text, tlfrefnc integer, celrefnc integer, tprefnc text, ocurefnc text, instcrefnc text, idpaciente integer) OWNER TO postgres;

--
-- TOC entry 221 (class 1255 OID 32831)
-- Name: tg_inserthistcli(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION tg_inserthistcli() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin 
	insert into historiaclinica (idhistcli, fchregistro, idpaciente)
    values (default, now(), new.idpaciente);
	return null;
end;
$$;


ALTER FUNCTION public.tg_inserthistcli() OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16425)
-- Name: sqc_canton; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sqc_canton
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sqc_canton OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 206 (class 1259 OID 16455)
-- Name: canton; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE canton (
    idcanton integer DEFAULT nextval('sqc_canton'::regclass) NOT NULL,
    canton text NOT NULL,
    idprovincia integer NOT NULL
);


ALTER TABLE canton OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16433)
-- Name: sqc_hstclinica; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sqc_hstclinica
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sqc_hstclinica OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16490)
-- Name: historiaclinica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE historiaclinica (
    idhistcli integer DEFAULT nextval('sqc_hstclinica'::regclass) NOT NULL,
    fchregistro date NOT NULL,
    idoperador integer,
    idpaciente integer NOT NULL
);


ALTER TABLE historiaclinica OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16431)
-- Name: sqc_nacionalidad; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sqc_nacionalidad
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sqc_nacionalidad OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16441)
-- Name: nacionalidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE nacionalidad (
    idnacionalidad integer DEFAULT nextval('sqc_nacionalidad'::regclass) NOT NULL,
    pais text NOT NULL,
    nacionalidad text NOT NULL
);


ALTER TABLE nacionalidad OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16435)
-- Name: sqc_operador; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sqc_operador
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sqc_operador OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16483)
-- Name: operador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE operador (
    idoperador integer DEFAULT nextval('sqc_operador'::regclass) NOT NULL,
    nmboprdr text NOT NULL,
    aplldoprdr text NOT NULL,
    cargo text NOT NULL,
    estoprdr integer NOT NULL,
    useroprdr text NOT NULL,
    passoprdr text NOT NULL,
    cdloperador integer NOT NULL
);


ALTER TABLE operador OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16437)
-- Name: sqc_paciente; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sqc_paciente
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sqc_paciente OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16469)
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE paciente (
    idpaciente integer DEFAULT nextval('sqc_paciente'::regclass) NOT NULL,
    cedpacnt integer,
    nmbpacnt text NOT NULL,
    aplldpacnt text NOT NULL,
    drcnpacnt text NOT NULL,
    sexpacnt text NOT NULL,
    fchnctpacnt date NOT NULL,
    tlfpacnt1 integer,
    tlfpacnt2 integer,
    tpsngre text,
    idparroquia integer,
    idnacionalidad integer
);


ALTER TABLE paciente OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16429)
-- Name: sqc_parroquia; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sqc_parroquia
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sqc_parroquia OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16462)
-- Name: parroquia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE parroquia (
    idparroquia integer DEFAULT nextval('sqc_parroquia'::regclass) NOT NULL,
    parroquia text NOT NULL,
    idcanton integer NOT NULL
);


ALTER TABLE parroquia OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16427)
-- Name: sqc_provincia; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sqc_provincia
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sqc_provincia OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16448)
-- Name: provincia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE provincia (
    idprovincia integer DEFAULT nextval('sqc_provincia'::regclass) NOT NULL,
    provincia text NOT NULL
);


ALTER TABLE provincia OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16439)
-- Name: sqc_referencia; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sqc_referencia
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sqc_referencia OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16476)
-- Name: referencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE referencia (
    idreferencia integer DEFAULT nextval('sqc_referencia'::regclass) NOT NULL,
    cedrefnc integer,
    nmbrefnc text,
    apllrefnc text,
    drcnrefnc text,
    tlfrefnc integer,
    celrefnc integer,
    tprefnc text,
    ocurefnc text,
    instcrefnc text,
    idpaciente integer NOT NULL
);


ALTER TABLE referencia OWNER TO postgres;

--
-- TOC entry 2890 (class 0 OID 16455)
-- Dependencies: 206
-- Data for Name: canton; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY canton (idcanton, canton, idprovincia) FROM stdin;
1	Quito	1
\.


--
-- TOC entry 2895 (class 0 OID 16490)
-- Dependencies: 211
-- Data for Name: historiaclinica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY historiaclinica (idhistcli, fchregistro, idoperador, idpaciente) FROM stdin;
1	2018-02-04	\N	2
\.


--
-- TOC entry 2888 (class 0 OID 16441)
-- Dependencies: 204
-- Data for Name: nacionalidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY nacionalidad (idnacionalidad, pais, nacionalidad) FROM stdin;
1	Ecuador	Ecuatoriano
\.


--
-- TOC entry 2894 (class 0 OID 16483)
-- Dependencies: 210
-- Data for Name: operador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY operador (idoperador, nmboprdr, aplldoprdr, cargo, estoprdr, useroprdr, passoprdr, cdloperador) FROM stdin;
2	Francisco	Simbaña	SU	1	fsimbana	1234	1725519902
\.


--
-- TOC entry 2892 (class 0 OID 16469)
-- Dependencies: 208
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY paciente (idpaciente, cedpacnt, nmbpacnt, aplldpacnt, drcnpacnt, sexpacnt, fchnctpacnt, tlfpacnt1, tlfpacnt2, tpsngre, idparroquia, idnacionalidad) FROM stdin;
1	1710464908	susana	tituaña	calle chilublo Oe10-53	Femenino	1992-10-31	2610096	969013214	O+	1	1
2	1725519902	francisco	javier	Chilibulo	Masculino	1992-10-31	2610096	969013214	O+	1	1
\.


--
-- TOC entry 2891 (class 0 OID 16462)
-- Dependencies: 207
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY parroquia (idparroquia, parroquia, idcanton) FROM stdin;
1	La Magdalena	1
\.


--
-- TOC entry 2889 (class 0 OID 16448)
-- Dependencies: 205
-- Data for Name: provincia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY provincia (idprovincia, provincia) FROM stdin;
1	Pichincha
\.


--
-- TOC entry 2893 (class 0 OID 16476)
-- Dependencies: 209
-- Data for Name: referencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY referencia (idreferencia, cedrefnc, nmbrefnc, apllrefnc, drcnrefnc, tlfrefnc, celrefnc, tprefnc, ocurefnc, instcrefnc, idpaciente) FROM stdin;
\.


--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 196
-- Name: sqc_canton; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sqc_canton', 1, true);


--
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 200
-- Name: sqc_hstclinica; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sqc_hstclinica', 1, true);


--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 199
-- Name: sqc_nacionalidad; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sqc_nacionalidad', 1, true);


--
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 201
-- Name: sqc_operador; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sqc_operador', 2, true);


--
-- TOC entry 2907 (class 0 OID 0)
-- Dependencies: 202
-- Name: sqc_paciente; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sqc_paciente', 2, true);


--
-- TOC entry 2908 (class 0 OID 0)
-- Dependencies: 198
-- Name: sqc_parroquia; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sqc_parroquia', 1, true);


--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 197
-- Name: sqc_provincia; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sqc_provincia', 1, true);


--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 203
-- Name: sqc_referencia; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sqc_referencia', 1, false);


--
-- TOC entry 2740 (class 2606 OID 16495)
-- Name: canton pk_idcanton; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY canton
    ADD CONSTRAINT pk_idcanton PRIMARY KEY (idcanton);


--
-- TOC entry 2750 (class 2606 OID 16501)
-- Name: historiaclinica pk_idhistcli; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historiaclinica
    ADD CONSTRAINT pk_idhistcli PRIMARY KEY (idhistcli, idpaciente);


--
-- TOC entry 2736 (class 2606 OID 16497)
-- Name: nacionalidad pk_idnacionalidad; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY nacionalidad
    ADD CONSTRAINT pk_idnacionalidad PRIMARY KEY (idnacionalidad);


--
-- TOC entry 2748 (class 2606 OID 24625)
-- Name: operador pk_idoperador; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY operador
    ADD CONSTRAINT pk_idoperador PRIMARY KEY (idoperador);


--
-- TOC entry 2744 (class 2606 OID 16505)
-- Name: paciente pk_idpaciente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT pk_idpaciente PRIMARY KEY (idpaciente);


--
-- TOC entry 2742 (class 2606 OID 16507)
-- Name: parroquia pk_idparroquia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT pk_idparroquia PRIMARY KEY (idparroquia);


--
-- TOC entry 2746 (class 2606 OID 16509)
-- Name: referencia pk_idreferencia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY referencia
    ADD CONSTRAINT pk_idreferencia PRIMARY KEY (idreferencia);


--
-- TOC entry 2738 (class 2606 OID 16499)
-- Name: provincia pk_ipprovincia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provincia
    ADD CONSTRAINT pk_ipprovincia PRIMARY KEY (idprovincia);


--
-- TOC entry 2758 (class 2620 OID 32835)
-- Name: paciente tg_inserthistcli; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tg_inserthistcli AFTER INSERT ON paciente FOR EACH ROW EXECUTE PROCEDURE tg_inserthistcli();


--
-- TOC entry 2753 (class 2606 OID 16510)
-- Name: paciente fk_idnacionalidad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT fk_idnacionalidad FOREIGN KEY (idnacionalidad) REFERENCES nacionalidad(idnacionalidad);


--
-- TOC entry 2757 (class 2606 OID 32824)
-- Name: historiaclinica fk_idoperador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historiaclinica
    ADD CONSTRAINT fk_idoperador FOREIGN KEY (idoperador) REFERENCES operador(idoperador);


--
-- TOC entry 2755 (class 2606 OID 16520)
-- Name: referencia fk_idpaciente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY referencia
    ADD CONSTRAINT fk_idpaciente FOREIGN KEY (idpaciente) REFERENCES paciente(idpaciente);


--
-- TOC entry 2756 (class 2606 OID 16525)
-- Name: historiaclinica fk_idpaciente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historiaclinica
    ADD CONSTRAINT fk_idpaciente FOREIGN KEY (idpaciente) REFERENCES paciente(idpaciente);


--
-- TOC entry 2754 (class 2606 OID 16530)
-- Name: paciente fk_idparroquia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT fk_idparroquia FOREIGN KEY (idparroquia) REFERENCES parroquia(idparroquia);


--
-- TOC entry 2751 (class 2606 OID 16535)
-- Name: canton fk_idprovincia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY canton
    ADD CONSTRAINT fk_idprovincia FOREIGN KEY (idprovincia) REFERENCES provincia(idprovincia);


--
-- TOC entry 2752 (class 2606 OID 16540)
-- Name: parroquia fk_ipcanton; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT fk_ipcanton FOREIGN KEY (idcanton) REFERENCES canton(idcanton);


-- Completed on 2018-02-08 16:39:50

--
-- PostgreSQL database dump complete
--

