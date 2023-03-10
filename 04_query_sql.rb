# 4) A partir das tabelas do banco de dados abaixo, escreva uma query sql que através de
# join, retorne o nome completo, cpf, equipe e cargo dos colaboradores ordenando os por cpf.

# SELECT CONCAT(first_name,' ',last_name) AS "Nome completo",
# cpf AS CPF,
# teams.name AS Equipe,
# job_titles.name AS Colaboradores
# FROM employees
# INNER JOIN job_titles
# ON employees.job_title_id=job_titles.id
# INNER JOIN teams
# ON employees.team_id=teams.id
# ORDER BY cpf;