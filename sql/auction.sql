-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.2-alpha
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

-- object: public.goods | type: TABLE --
-- DROP TABLE IF EXISTS public.goods CASCADE;
CREATE TABLE public.goods(
	id integer NOT NULL,
	item_name varchar(255) NOT NULL,
	item_description varchar(255) NOT NULL,
	item_add_date timestamp NOT NULL DEFAULT sysdate,
	id_users integer,
	item_picture bytea,
	CONSTRAINT goods_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE public.goods IS 'Таблица с товарами';
-- ddl-end --
COMMENT ON COLUMN public.goods.id IS 'id';
-- ddl-end --
COMMENT ON COLUMN public.goods.item_name IS 'Название товара';
-- ddl-end --
COMMENT ON COLUMN public.goods.item_description IS 'Описание товара';
-- ddl-end --
COMMENT ON COLUMN public.goods.item_add_date IS 'Дата добавления товара';
-- ddl-end --
COMMENT ON COLUMN public.goods.item_picture IS 'Фото товара';
-- ddl-end --
ALTER TABLE public.goods OWNER TO postgres;
-- ddl-end --

-- object: public.users | type: TABLE --
-- DROP TABLE IF EXISTS public.users CASCADE;
CREATE TABLE public.users(
	id integer NOT NULL,
	name varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	surname varchar(255) NOT NULL,
	middle_name varchar(255) NOT NULL,
	role varchar(255) NOT NULL DEFAULT USER,
	nickname varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
	CONSTRAINT users_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON COLUMN public.users.id IS 'id';
-- ddl-end --
COMMENT ON COLUMN public.users.name IS 'Имя пользователя';
-- ddl-end --
COMMENT ON COLUMN public.users.email IS 'Адрес электронной почты';
-- ddl-end --
COMMENT ON COLUMN public.users.surname IS 'Фамилия';
-- ddl-end --
COMMENT ON COLUMN public.users.middle_name IS 'Отчество';
-- ddl-end --
COMMENT ON COLUMN public.users.role IS 'Роль';
-- ddl-end --
COMMENT ON COLUMN public.users.nickname IS 'Ник';
-- ddl-end --
ALTER TABLE public.users OWNER TO postgres;
-- ddl-end --

-- object: users_fk | type: CONSTRAINT --
-- ALTER TABLE public.goods DROP CONSTRAINT IF EXISTS users_fk CASCADE;
ALTER TABLE public.goods ADD CONSTRAINT users_fk FOREIGN KEY (id_users)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: goods_uq | type: CONSTRAINT --
-- ALTER TABLE public.goods DROP CONSTRAINT IF EXISTS goods_uq CASCADE;
ALTER TABLE public.goods ADD CONSTRAINT goods_uq UNIQUE (id_users);
-- ddl-end --

-- object: public.auction | type: TABLE --
-- DROP TABLE IF EXISTS public.auction CASCADE;
CREATE TABLE public.auction(
	id integer NOT NULL,
	id_goods integer,
	lot_name varchar(255) NOT NULL,
	lot_start_date timestamp,
	lot_end_date timestamp,
	lot_start_cost bigint,
	lot_stop_cost bigint,
	id_users integer,
	lot_is_active boolean,
	CONSTRAINT auction_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE public.auction IS 'Аукцион';
-- ddl-end --
COMMENT ON COLUMN public.auction.id IS 'id';
-- ddl-end --
COMMENT ON COLUMN public.auction.lot_start_date IS 'Дата добавления лота';
-- ddl-end --
COMMENT ON COLUMN public.auction.lot_end_date IS 'Дата окончания аукциона';
-- ddl-end --
COMMENT ON COLUMN public.auction.lot_start_cost IS 'Начальная цена лота';
-- ddl-end --
COMMENT ON COLUMN public.auction.lot_stop_cost IS 'Верхний предел ставки';
-- ddl-end --
ALTER TABLE public.auction OWNER TO postgres;
-- ddl-end --

-- object: goods_fk | type: CONSTRAINT --
-- ALTER TABLE public.auction DROP CONSTRAINT IF EXISTS goods_fk CASCADE;
ALTER TABLE public.auction ADD CONSTRAINT goods_fk FOREIGN KEY (id_goods)
REFERENCES public.goods (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: auction_uq1 | type: CONSTRAINT --
-- ALTER TABLE public.auction DROP CONSTRAINT IF EXISTS auction_uq1 CASCADE;
ALTER TABLE public.auction ADD CONSTRAINT auction_uq1 UNIQUE (id_goods);
-- ddl-end --

-- object: users_fk | type: CONSTRAINT --
-- ALTER TABLE public.auction DROP CONSTRAINT IF EXISTS users_fk CASCADE;
ALTER TABLE public.auction ADD CONSTRAINT users_fk FOREIGN KEY (id_users)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: auction_uq | type: CONSTRAINT --
-- ALTER TABLE public.auction DROP CONSTRAINT IF EXISTS auction_uq CASCADE;
ALTER TABLE public.auction ADD CONSTRAINT auction_uq UNIQUE (id_users);
-- ddl-end --


