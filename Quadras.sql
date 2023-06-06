-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler version: 0.9.4
-- PostgreSQL version: 13.0
-- Project Site: pgmodeler.io
-- Model Author: ---

-- Database creation must be performed outside a multi lined SQL file. 
-- These commands were put in this file only as a convenience.
-- 
-- object: Quadras | type: DATABASE --
-- DROP DATABASE IF EXISTS Quadras;
CREATE DATABASE Quadras;
-- ddl-end --


-- object: public.Quadra | type: TABLE --
-- DROP TABLE IF EXISTS public.Quadra CASCADE;
CREATE TABLE public.Quadra (
	ID_Quadra integer NOT NULL,
	Desc_Quadra varchar(100),
	Comprimento numeric(4,2) NOT NULL,
	Largura numeric(4,2) NOT NULL,
	ID_Tipo_Tipo_Quadra integer,
	CONSTRAINT Quadra_pk PRIMARY KEY (ID_Quadra)
);
-- ddl-end --
ALTER TABLE public.Quadra OWNER TO postgres;
-- ddl-end --

-- object: public.Tipo_Quadra | type: TABLE --
-- DROP TABLE IF EXISTS public.Tipo_Quadra CASCADE;
CREATE TABLE public.Tipo_Quadra (
	ID_Tipo integer NOT NULL,
	Desc_Tipo_Quadra varchar(100),
	CONSTRAINT Tipo_Quadra_pk PRIMARY KEY (ID_Tipo)
);
-- ddl-end --
ALTER TABLE public.Tipo_Quadra OWNER TO postgres;
-- ddl-end --

-- object: public.Professor | type: TABLE --
-- DROP TABLE IF EXISTS public.Professor CASCADE;
CREATE TABLE public.Professor (
	Matricula_Prof integer NOT NULL,
	Nome_Prof varchar(100) NOT NULL,
	Salário_Prof decimal(6,2) NOT NULL,
	CONSTRAINT Professor_pk PRIMARY KEY (Matricula_Prof)
);
-- ddl-end --
ALTER TABLE public.Professor OWNER TO postgres;
-- ddl-end --

-- object: public.Esporte | type: TABLE --
-- DROP TABLE IF EXISTS public.Esporte CASCADE;
CREATE TABLE public.Esporte (
	ID_Esporte integer NOT NULL,
	Desc_Esporte varchar(100) NOT NULL,
	Modalidade varchar(100) NOT NULL,
	Equipes integer NOT NULL,
	CONSTRAINT Esporte_pk PRIMARY KEY (ID_Esporte)
);
-- ddl-end --
ALTER TABLE public.Esporte OWNER TO postgres;
-- ddl-end --

-- object: public.Aluno | type: TABLE --
-- DROP TABLE IF EXISTS public.Aluno CASCADE;
CREATE TABLE public.Aluno (
	Matricula_Aluno integer NOT NULL,
	Nome_Aluno varchar(100) NOT NULL,
	Mensalidade decimal(6,2) NOT NULL,
	data_pagamento date NOT NULL,
	Pagamento varchar(4),
	CONSTRAINT Aluno_pk PRIMARY KEY (Matricula_Aluno)
);
-- ddl-end --
ALTER TABLE public.Aluno OWNER TO postgres;
-- ddl-end --

-- object: public.Aluguel | type: TABLE --
-- DROP TABLE IF EXISTS public.Aluguel CASCADE;
CREATE TABLE public.Aluguel (
	ID_Aluguel integer NOT NULL,
	Data_Locação timestamp NOT NULL,
	Valor decimal(6,2) NOT NULL,
	Tempo integer NOT NULL,
	Data_Devolução date NOT NULL,
	ID_Quadra_Quadra integer,
	CONSTRAINT Aluguel_pk PRIMARY KEY (ID_Aluguel,Data_Locação)
);
-- ddl-end --
ALTER TABLE public.Aluguel OWNER TO postgres;
-- ddl-end --

-- object: public.Turma | type: TABLE --
-- DROP TABLE IF EXISTS public.Turma CASCADE;
CREATE TABLE public.Turma (
	ID_Turma integer NOT NULL,
	ID_Quadra_Quadra integer,
	Matricula_Prof_Professor integer,
	ID_Esporte_Esporte integer,
	Matricula_Aluno_Aluno integer,
	CONSTRAINT Turma_pk PRIMARY KEY (ID_Turma)
);
-- ddl-end --
ALTER TABLE public.Turma OWNER TO postgres;
-- ddl-end --

-- object: Quadra_fk | type: CONSTRAINT --
-- ALTER TABLE public.Turma DROP CONSTRAINT IF EXISTS Quadra_fk CASCADE;
ALTER TABLE public.Turma ADD CONSTRAINT Quadra_fk FOREIGN KEY (ID_Quadra_Quadra)
REFERENCES public.Quadra (ID_Quadra) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: Professor_fk | type: CONSTRAINT --
-- ALTER TABLE public.Turma DROP CONSTRAINT IF EXISTS Professor_fk CASCADE;
ALTER TABLE public.Turma ADD CONSTRAINT Professor_fk FOREIGN KEY (Matricula_Prof_Professor)
REFERENCES public.Professor (Matricula_Prof) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: Esporte_fk | type: CONSTRAINT --
-- ALTER TABLE public.Turma DROP CONSTRAINT IF EXISTS Esporte_fk CASCADE;
ALTER TABLE public.Turma ADD CONSTRAINT Esporte_fk FOREIGN KEY (ID_Esporte_Esporte)
REFERENCES public.Esporte (ID_Esporte) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: Quadra_fk | type: CONSTRAINT --
-- ALTER TABLE public.Aluguel DROP CONSTRAINT IF EXISTS Quadra_fk CASCADE;
ALTER TABLE public.Aluguel ADD CONSTRAINT Quadra_fk FOREIGN KEY (ID_Quadra_Quadra)
REFERENCES public.Quadra (ID_Quadra) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.Colaborador | type: TABLE --
-- DROP TABLE IF EXISTS public.Colaborador CASCADE;
CREATE TABLE public.Colaborador (
	Matrícula_Colaborador integer NOT NULL,
	Nome_Colaborador varchar(100) NOT NULL,
	Salário_Colaborador decimal(6,2) NOT NULL,
	CONSTRAINT Colaborador_pk PRIMARY KEY (Matrícula_Colaborador)
);
-- ddl-end --
ALTER TABLE public.Colaborador OWNER TO postgres;
-- ddl-end --

-- object: Tipo_Quadra_fk | type: CONSTRAINT --
-- ALTER TABLE public.Quadra DROP CONSTRAINT IF EXISTS Tipo_Quadra_fk CASCADE;
ALTER TABLE public.Quadra ADD CONSTRAINT Tipo_Quadra_fk FOREIGN KEY (ID_Tipo_Tipo_Quadra)
REFERENCES public.Tipo_Quadra (ID_Tipo) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.Serviço | type: TABLE --
-- DROP TABLE IF EXISTS public.Serviço CASCADE;
CREATE TABLE public.Serviço (
	ID_Serviço integer NOT NULL,
	Desc_Serviço varchar(100),
	Data_Serviço date,
	Duração_Serviço time,
	Matrícula_Colaborador_Colaborador integer,
	ID_Quadra_Quadra integer,
	CONSTRAINT Serviço_pk PRIMARY KEY (ID_Serviço)
);
-- ddl-end --
ALTER TABLE public.Serviço OWNER TO postgres;
-- ddl-end --

-- object: public.Nota_Fiscal | type: TABLE --
-- DROP TABLE IF EXISTS public.Nota_Fiscal CASCADE;
CREATE TABLE public.Nota_Fiscal (
	ID_Nota_Fiscal integer NOT NULL,
	ID_Aluguel_Aluguel integer,
	Data_Locação_Aluguel timestamp,
	Matricula_Aluno_Aluno integer,
	CONSTRAINT Nota_Fiscal_pk PRIMARY KEY (ID_Nota_Fiscal)
);
-- ddl-end --
ALTER TABLE public.Nota_Fiscal OWNER TO postgres;
-- ddl-end --

-- object: Aluguel_fk | type: CONSTRAINT --
-- ALTER TABLE public.Nota_Fiscal DROP CONSTRAINT IF EXISTS Aluguel_fk CASCADE;
ALTER TABLE public.Nota_Fiscal ADD CONSTRAINT Aluguel_fk FOREIGN KEY (ID_Aluguel_Aluguel,Data_Locação_Aluguel)
REFERENCES public.Aluguel (ID_Aluguel,Data_Locação) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: Nota_Fiscal_uq | type: CONSTRAINT --
-- ALTER TABLE public.Nota_Fiscal DROP CONSTRAINT IF EXISTS Nota_Fiscal_uq CASCADE;
ALTER TABLE public.Nota_Fiscal ADD CONSTRAINT Nota_Fiscal_uq UNIQUE (ID_Aluguel_Aluguel,Data_Locação_Aluguel);
-- ddl-end --

-- object: Aluno_fk | type: CONSTRAINT --
-- ALTER TABLE public.Nota_Fiscal DROP CONSTRAINT IF EXISTS Aluno_fk CASCADE;
ALTER TABLE public.Nota_Fiscal ADD CONSTRAINT Aluno_fk FOREIGN KEY (Matricula_Aluno_Aluno)
REFERENCES public.Aluno (Matricula_Aluno) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: Colaborador_fk | type: CONSTRAINT --
-- ALTER TABLE public.Serviço DROP CONSTRAINT IF EXISTS Colaborador_fk CASCADE;
ALTER TABLE public.Serviço ADD CONSTRAINT Colaborador_fk FOREIGN KEY (Matrícula_Colaborador_Colaborador)
REFERENCES public.Colaborador (Matrícula_Colaborador) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: Aluno_fk | type: CONSTRAINT --
-- ALTER TABLE public.Turma DROP CONSTRAINT IF EXISTS Aluno_fk CASCADE;
ALTER TABLE public.Turma ADD CONSTRAINT Aluno_fk FOREIGN KEY (Matricula_Aluno_Aluno)
REFERENCES public.Aluno (Matricula_Aluno) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: Quadra_fk | type: CONSTRAINT --
-- ALTER TABLE public.Serviço DROP CONSTRAINT IF EXISTS Quadra_fk CASCADE;
ALTER TABLE public.Serviço ADD CONSTRAINT Quadra_fk FOREIGN KEY (ID_Quadra_Quadra)
REFERENCES public.Quadra (ID_Quadra) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --