=begin 
4) A partir das tabelas do banco de dados abaixo, escreva uma query sql que através de
join, retorne o nome completo, cpf, equipe e cargo dos colaboradores ordenando os por cpf.

create table job_titles (
	id serial primary key,
	name varchar(100) not null
);

create table teams (
	id serial primary key,
	name varchar(50) not null
);

create table employees (
	id serial primary key,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	cpf varchar(14) not null,
	team_id integer,
	job_title_id integer,

	constraint fk_employee_team
		foreign key (team_id)
		references teams(id)
		on delete set null,

	constraint fk_employee_job_title
		foreign key (job_title_id)
		references job_titles(id)
		on delete restrict
);

-- Populando os Cargos
INSERT INTO job_titles (id, name) VALUES 
(1, 'Desenvolvedor back-endimpr'),
(2, 'Desenvolvedor front-end'),
(3, 'Encantador de clientes');

-- Populando os Times
INSERT INTO teams (id, name) VALUES 
(1, 'TI'),
(2, 'Suporte'),
(3, 'Financeiro');

-- Populando os Funcionários
INSERT INTO employees (id, first_name, last_name, cpf, team_id, job_title_id) VALUES 
(1, 'Pedro', 'Alves', '665.415.876.80', 2, 3),
(2, 'Tiago', 'Nogueira', '032.336.130-75', 1, 1),
(3, 'João', 'Neves', '461.636.517.23', 1, 2);


-- QUERYS
SELECT * FROM employees;
SELECT * FROM teams;
SELECT * FROM job_titles;

SELECT CONCAT(E.first_name, ' ', E.last_name) AS nome_completo, 
E.cpf AS CPF, 
T.name AS equipe, 
J.name AS cargo
FROM employees E
INNER JOIN teams T on E.team_id = T.id
INNER JOIN job_titles J ON E.job_title_id = J.id
ORDER BY E.cpf;

=end