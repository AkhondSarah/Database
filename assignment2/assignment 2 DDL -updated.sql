-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.1
-- PostgreSQL version: 10.0
-- Project Site: pgmodeler.io
-- Model Author: ---


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: new_database | type: DATABASE --
-- -- DROP DATABASE IF EXISTS new_database;
-- CREATE DATABASE new_database;
-- -- ddl-end --
-- 

-- object: public.invoice_line | type: TABLE --
-- DROP TABLE IF EXISTS public.invoice_line CASCADE;
CREATE TABLE public.invoice_line(
	invoice_number bigint NOT NULL,
	invoice_line integer NOT NULL,
	prod_number character(5) NOT NULL,
	line_unit integer NOT NULL,
	line_price numeric(9,2) NOT NULL,
	CONSTRAINT invoice_line_pk PRIMARY KEY (invoice_number,invoice_line)

);
-- ddl-end --
ALTER TABLE public.invoice_line OWNER TO postgres;
-- ddl-end --

-- object: public.product | type: TABLE --
-- DROP TABLE IF EXISTS public.product CASCADE;
CREATE TABLE public.product(
	prod_number character(5) NOT NULL,
	prod_description character varying(50) NOT NULL,
	prod_quantity integer NOT NULL,
	prod_price numeric(6,2) NOT NULL,
	prod_discount numeric(2,2),
	CONSTRAINT product_pk PRIMARY KEY (prod_number)

);
-- ddl-end --
ALTER TABLE public.product OWNER TO postgres;
-- ddl-end --

-- object: public.invoice | type: TABLE --
-- DROP TABLE IF EXISTS public.invoice CASCADE;
CREATE TABLE public.invoice(
	invoice_number bigint NOT NULL,
	invoice_date date,
	invoice_shipmethod character varying(30),
	invoice_shipterm character varying(30),
	invoice_delivdate date,
	invoice_payterm character varying(30),
	invoice_duedate date,
	invoice_company character varying(30),
	invoice_address character varying(60),
	invoice_phone character(8),
	invoice_email character varying(30),
	sale_person character varying(30) NOT NULL,
	cust_id1 serial NOT NULL,
	cust_id2 serial NOT NULL,
	CONSTRAINT invoice_pk PRIMARY KEY (invoice_number)

);
-- ddl-end --
ALTER TABLE public.invoice OWNER TO postgres;
-- ddl-end --

-- object: public.customer | type: TABLE --
-- DROP TABLE IF EXISTS public.customer CASCADE;
CREATE TABLE public.customer(
	cust_id serial NOT NULL,
	cust_name character(30) NOT NULL,
	cust_company character varying(30),
	cust_address character varying(60) NOT NULL,
	cust_phone character(8) NOT NULL,
	CONSTRAINT customer_pk PRIMARY KEY (cust_id)

);
-- ddl-end --
ALTER TABLE public.customer OWNER TO postgres;
-- ddl-end --

-- object: public.sale | type: TABLE --
-- DROP TABLE IF EXISTS public.sale CASCADE;
CREATE TABLE public.sale(
	sale_person character varying(30) NOT NULL,
	sale_job character varying(60),
	CONSTRAINT sale_pk PRIMARY KEY (sale_person)

);
-- ddl-end --
ALTER TABLE public.sale OWNER TO postgres;
-- ddl-end --

-- object: prod_fk | type: CONSTRAINT --
-- ALTER TABLE public.invoice_line DROP CONSTRAINT IF EXISTS prod_fk CASCADE;
ALTER TABLE public.invoice_line ADD CONSTRAINT prod_fk FOREIGN KEY (prod_number)
REFERENCES public.product (prod_number) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: invoice_number | type: CONSTRAINT --
-- ALTER TABLE public.invoice_line DROP CONSTRAINT IF EXISTS invoice_number CASCADE;
ALTER TABLE public.invoice_line ADD CONSTRAINT invoice_number FOREIGN KEY (invoice_number)
REFERENCES public.invoice (invoice_number) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: sale_person | type: CONSTRAINT --
-- ALTER TABLE public.invoice DROP CONSTRAINT IF EXISTS sale_person CASCADE;
ALTER TABLE public.invoice ADD CONSTRAINT sale_person FOREIGN KEY (sale_person)
REFERENCES public.sale (sale_person) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: cust_id1 | type: CONSTRAINT --
-- ALTER TABLE public.invoice DROP CONSTRAINT IF EXISTS cust_id1 CASCADE;
ALTER TABLE public.invoice ADD CONSTRAINT cust_id1 FOREIGN KEY (cust_id1)
REFERENCES public.customer (cust_id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: cust_id2 | type: CONSTRAINT --
-- ALTER TABLE public.invoice DROP CONSTRAINT IF EXISTS cust_id2 CASCADE;
ALTER TABLE public.invoice ADD CONSTRAINT cust_id2 FOREIGN KEY (cust_id2)
REFERENCES public.customer (cust_id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


