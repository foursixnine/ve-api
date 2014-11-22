--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.5
-- Dumped by pg_dump version 9.3.5
-- Started on 2014-11-21 01:27:17 VET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

DROP DATABASE vzla;
--
-- TOC entry 2015 (class 1262 OID 35220)
-- Name: vzla; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE vzla WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C' TABLESPACE = tbpostgres;


\connect vzla

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 8 (class 2615 OID 35223)
-- Name: cne; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA cne;


--
-- TOC entry 10 (class 2615 OID 35538)
-- Name: dpt; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA dpt;


--
-- TOC entry 7 (class 2615 OID 35221)
-- Name: onidex; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA onidex;


--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 2016 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 9 (class 2615 OID 35296)
-- Name: saime; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA saime;


--
-- TOC entry 185 (class 3079 OID 11756)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2017 (class 0 OID 0)
-- Dependencies: 185
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = cne, pg_catalog;

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 43722)
-- Name: electores; Type: TABLE; Schema: cne; Owner: -
--

CREATE TABLE electores (
    nacionalidad character(1) NOT NULL,
    cedula integer NOT NULL,
    primer_apellido character varying(60),
    segundo_apellido character varying(60),
    primer_nombre character varying(60),
    segundo_nombre character varying(60),
    cod_centro integer
);


SET search_path = onidex, pg_catalog;

--
-- TOC entry 174 (class 1259 OID 35224)
-- Name: cedulados; Type: TABLE; Schema: onidex; Owner: -
--

CREATE TABLE cedulados (
    cedula bigint NOT NULL,
    primer_nombre character varying(60),
    primer_apellido character varying(60),
    email character varying(75),
    telefono character varying(20)
);


SET search_path = saime, pg_catalog;

--
-- TOC entry 183 (class 1259 OID 35513)
-- Name: cedulados; Type: TABLE; Schema: saime; Owner: -
--

CREATE TABLE cedulados (
    primernombre character varying,
    segundonombre character varying,
    primerapellido character varying,
    segundoapellido character varying,
    letra character(1),
    cedula bigint,
    fecha_nacimiento date,
    nacionalidad character(3),
    sexo character(1),
    estado_civil character varying,
    nombres character varying[],
    apellidos character varying[]
);


--
-- TOC entry 182 (class 1259 OID 35429)
-- Name: cedulas; Type: TABLE; Schema: saime; Owner: -
--

CREATE TABLE cedulas (
    primernombre character varying,
    segundonombre character varying,
    primerapellido character varying,
    segundoapellido character varying,
    letra character(1) NOT NULL,
    cedula bigint NOT NULL,
    fecha_nacimiento date,
    nacionalidad character(3),
    sexo character(1),
    estado_civil character varying
);


--
-- TOC entry 175 (class 1259 OID 35297)
-- Name: tbl_cedulas1; Type: TABLE; Schema: saime; Owner: -
--

CREATE TABLE tbl_cedulas1 (
    primernombre character varying(60),
    segundonombre character varying(60),
    primerapellido character varying(50),
    segundoapellido character varying(50),
    letra character(1),
    cedula bigint,
    fecha_nacimiento character varying(12),
    nacionalidad character(3),
    sexo character(1),
    estado_civil character varying(20)
);


--
-- TOC entry 2018 (class 0 OID 0)
-- Dependencies: 175
-- Name: TABLE tbl_cedulas1; Type: COMMENT; Schema: saime; Owner: -
--

COMMENT ON TABLE tbl_cedulas1 IS 'Tabla que almacena los datos de personas naturales o extranjeras con el rango de cedula 0-5.000.000';


--
-- TOC entry 176 (class 1259 OID 35300)
-- Name: tbl_cedulas2; Type: TABLE; Schema: saime; Owner: -
--

CREATE TABLE tbl_cedulas2 (
    primernombre character varying(60),
    segundonombre character varying(60),
    primerapellido character varying(50),
    segundoapellido character varying(50),
    letra character(1),
    cedula bigint,
    fecha_nacimiento character varying(12),
    nacionalidad character(3),
    sexo character(1),
    estado_civil character varying(20)
);


--
-- TOC entry 2019 (class 0 OID 0)
-- Dependencies: 176
-- Name: TABLE tbl_cedulas2; Type: COMMENT; Schema: saime; Owner: -
--

COMMENT ON TABLE tbl_cedulas2 IS 'Tabla que almacena los datos de personas naturales o extranjeras con el rango de cedula 5.000.001-10.000.000';


--
-- TOC entry 177 (class 1259 OID 35303)
-- Name: tbl_cedulas3; Type: TABLE; Schema: saime; Owner: -
--

CREATE TABLE tbl_cedulas3 (
    primernombre character varying(60),
    segundonombre character varying(60),
    primerapellido character varying(50),
    segundoapellido character varying(50),
    letra character(1),
    cedula bigint,
    fecha_nacimiento character varying(12),
    nacionalidad character(3),
    sexo character(1),
    estado_civil character varying(20)
);


--
-- TOC entry 2020 (class 0 OID 0)
-- Dependencies: 177
-- Name: TABLE tbl_cedulas3; Type: COMMENT; Schema: saime; Owner: -
--

COMMENT ON TABLE tbl_cedulas3 IS 'Tabla que almacena los datos de personas naturales o extranjeras con el rango de cedula 10.000.000-15.000.000';


--
-- TOC entry 178 (class 1259 OID 35306)
-- Name: tbl_cedulas4; Type: TABLE; Schema: saime; Owner: -
--

CREATE TABLE tbl_cedulas4 (
    primernombre character varying(60),
    segundonombre character varying(60),
    primerapellido character varying(50),
    segundoapellido character varying(50),
    letra character(1),
    cedula bigint,
    fecha_nacimiento character varying(12),
    nacionalidad character(3),
    sexo character(1),
    estado_civil character varying(20)
);


--
-- TOC entry 2021 (class 0 OID 0)
-- Dependencies: 178
-- Name: TABLE tbl_cedulas4; Type: COMMENT; Schema: saime; Owner: -
--

COMMENT ON TABLE tbl_cedulas4 IS 'Tabla que almacena los datos de personas naturales o extranjeras con el rango de cedula 15.000.000-20.000.000';


--
-- TOC entry 179 (class 1259 OID 35309)
-- Name: tbl_cedulas5; Type: TABLE; Schema: saime; Owner: -
--

CREATE TABLE tbl_cedulas5 (
    primernombre character varying(60),
    segundonombre character varying(60),
    primerapellido character varying(50),
    segundoapellido character varying(50),
    letra character(1),
    cedula bigint,
    fecha_nacimiento character varying(12),
    nacionalidad character(3),
    sexo character(1),
    estado_civil character varying(20)
);


--
-- TOC entry 2022 (class 0 OID 0)
-- Dependencies: 179
-- Name: TABLE tbl_cedulas5; Type: COMMENT; Schema: saime; Owner: -
--

COMMENT ON TABLE tbl_cedulas5 IS 'Tabla que almacena los datos de personas naturales o extranjeras con el rango de cedula 20.000.000-25.000.000';


--
-- TOC entry 180 (class 1259 OID 35312)
-- Name: tbl_cedulas6; Type: TABLE; Schema: saime; Owner: -
--

CREATE TABLE tbl_cedulas6 (
    primernombre character varying(60),
    segundonombre character varying(60),
    primerapellido character varying(50),
    segundoapellido character varying(50),
    letra character(1),
    cedula bigint,
    fecha_nacimiento character varying(12),
    nacionalidad character(3),
    sexo character(1),
    estado_civil character varying(20)
);


--
-- TOC entry 181 (class 1259 OID 35315)
-- Name: tbl_cedulas7; Type: TABLE; Schema: saime; Owner: -
--

CREATE TABLE tbl_cedulas7 (
    primernombre character varying(60),
    segundonombre character varying(60),
    primerapellido character varying(50),
    segundoapellido character varying(50),
    letra character(1),
    cedula bigint,
    fecha_nacimiento character varying(12),
    nacionalidad character(3),
    sexo character(1),
    estado_civil character varying(20)
);


SET search_path = cne, pg_catalog;

--
-- TOC entry 1897 (class 2606 OID 43726)
-- Name: electores_pkey; Type: CONSTRAINT; Schema: cne; Owner: -
--

ALTER TABLE ONLY electores
    ADD CONSTRAINT electores_pkey PRIMARY KEY (nacionalidad, cedula);


SET search_path = saime, pg_catalog;

--
-- TOC entry 1886 (class 2606 OID 35436)
-- Name: pk_cedulas; Type: CONSTRAINT; Schema: saime; Owner: -
--

ALTER TABLE ONLY cedulas
    ADD CONSTRAINT pk_cedulas PRIMARY KEY (letra, cedula);


SET search_path = cne, pg_catalog;

--
-- TOC entry 1898 (class 1259 OID 43727)
-- Name: electores_primer_nombre_primer_apellido_idx; Type: INDEX; Schema: cne; Owner: -
--

CREATE INDEX electores_primer_nombre_primer_apellido_idx ON electores USING btree (primer_nombre DESC NULLS LAST, primer_apellido DESC NULLS LAST);


--
-- TOC entry 1899 (class 1259 OID 43728)
-- Name: idx_cedula; Type: INDEX; Schema: cne; Owner: -
--

CREATE INDEX idx_cedula ON electores USING btree (cedula);


--
-- TOC entry 1900 (class 1259 OID 43729)
-- Name: idx_centro; Type: INDEX; Schema: cne; Owner: -
--

CREATE INDEX idx_centro ON electores USING btree (cod_centro);


--
-- TOC entry 1901 (class 1259 OID 43730)
-- Name: idx_electores_concat_apellidos; Type: INDEX; Schema: cne; Owner: -
--

CREATE INDEX idx_electores_concat_apellidos ON electores USING btree (((((primer_apellido)::text || ' '::text) || (segundo_apellido)::text)));


--
-- TOC entry 1902 (class 1259 OID 43731)
-- Name: idx_unq_cedula_500; Type: INDEX; Schema: cne; Owner: -
--

CREATE UNIQUE INDEX idx_unq_cedula_500 ON electores USING btree (cedula) WHERE (cedula > 500000);


--
-- TOC entry 1903 (class 1259 OID 43732)
-- Name: unq_cedula; Type: INDEX; Schema: cne; Owner: -
--

CREATE UNIQUE INDEX unq_cedula ON electores USING btree (nacionalidad DESC, cedula DESC);


SET search_path = saime, pg_catalog;

--
-- TOC entry 1888 (class 1259 OID 35521)
-- Name: idx_apellidos; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_apellidos ON cedulados USING btree (primerapellido, segundoapellido);


--
-- TOC entry 1889 (class 1259 OID 35526)
-- Name: idx_cedulados_apellidos; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulados_apellidos ON cedulados USING gin (apellidos);


--
-- TOC entry 1890 (class 1259 OID 35519)
-- Name: idx_cedulados_cedula; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulados_cedula ON cedulados USING btree (cedula);


--
-- TOC entry 1891 (class 1259 OID 35525)
-- Name: idx_cedulados_nombres; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulados_nombres ON cedulados USING gin (nombres);


--
-- TOC entry 1871 (class 1259 OID 35318)
-- Name: idx_cedulas1; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas1 ON tbl_cedulas1 USING btree (cedula, letra);


--
-- TOC entry 1873 (class 1259 OID 35319)
-- Name: idx_cedulas2; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas2 ON tbl_cedulas2 USING btree (cedula, letra);


--
-- TOC entry 1875 (class 1259 OID 35320)
-- Name: idx_cedulas3; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas3 ON tbl_cedulas3 USING btree (cedula, letra);


--
-- TOC entry 1877 (class 1259 OID 35321)
-- Name: idx_cedulas4; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas4 ON tbl_cedulas4 USING btree (cedula, letra);


--
-- TOC entry 1879 (class 1259 OID 35322)
-- Name: idx_cedulas5; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas5 ON tbl_cedulas5 USING btree (cedula, letra);


--
-- TOC entry 1881 (class 1259 OID 35323)
-- Name: idx_cedulas6; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas6 ON tbl_cedulas6 USING btree (cedula, letra);


--
-- TOC entry 1883 (class 1259 OID 35324)
-- Name: idx_cedulas7; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas7 ON tbl_cedulas7 USING btree (cedula, letra);


--
-- TOC entry 1872 (class 1259 OID 35325)
-- Name: idx_cedulas_solo1; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas_solo1 ON tbl_cedulas1 USING btree (cedula);


--
-- TOC entry 1874 (class 1259 OID 35326)
-- Name: idx_cedulas_solo2; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas_solo2 ON tbl_cedulas2 USING btree (cedula);


--
-- TOC entry 1876 (class 1259 OID 35327)
-- Name: idx_cedulas_solo3; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas_solo3 ON tbl_cedulas3 USING btree (cedula);


--
-- TOC entry 1878 (class 1259 OID 35328)
-- Name: idx_cedulas_solo4; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas_solo4 ON tbl_cedulas4 USING btree (cedula);


--
-- TOC entry 1880 (class 1259 OID 35329)
-- Name: idx_cedulas_solo5; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas_solo5 ON tbl_cedulas5 USING btree (cedula);


--
-- TOC entry 1882 (class 1259 OID 35330)
-- Name: idx_cedulas_solo6; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas_solo6 ON tbl_cedulas6 USING btree (cedula);


--
-- TOC entry 1884 (class 1259 OID 35331)
-- Name: idx_cedulas_solo7; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_cedulas_solo7 ON tbl_cedulas7 USING btree (cedula);


--
-- TOC entry 1892 (class 1259 OID 35522)
-- Name: idx_nacimiento_cedulado; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_nacimiento_cedulado ON cedulados USING btree (fecha_nacimiento);


--
-- TOC entry 1893 (class 1259 OID 35520)
-- Name: idx_nombre; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_nombre ON cedulados USING btree (primernombre, segundonombre);


--
-- TOC entry 1894 (class 1259 OID 35524)
-- Name: idx_nombre_completo; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_nombre_completo ON cedulados USING btree (((((primernombre)::text || ' '::text) || (primerapellido)::text)));


--
-- TOC entry 1895 (class 1259 OID 35523)
-- Name: idx_year_cedulado; Type: INDEX; Schema: saime; Owner: -
--

CREATE INDEX idx_year_cedulado ON cedulados USING btree (date_part('year'::text, fecha_nacimiento));


--
-- TOC entry 1887 (class 1259 OID 35445)
-- Name: unq_cedulas; Type: INDEX; Schema: saime; Owner: -
--

CREATE UNIQUE INDEX unq_cedulas ON cedulas USING btree (letra DESC NULLS LAST, cedula DESC NULLS LAST);


-- Completed on 2014-11-21 01:27:26 VET

--
-- PostgreSQL database dump complete
--

