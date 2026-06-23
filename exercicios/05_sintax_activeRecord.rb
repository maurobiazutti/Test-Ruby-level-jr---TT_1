=begin
5) Usando as tabelas do banco de dados do exercício anterior, escreva as classes das
models Employee, Team e JobTitle, declare as associações das models e escreva a mesma
query com a sintaxe do ActiveRecord.
  
=end

#  app/models/team.rb
class Team < ApplicationRecord
  # Um time tem muitos funcionários
  has_many :employees
end

# app/models/job_title.rb
class JobTitle < ApplicationRecord
  # Um cargo tem muitos funcionários
  has_many :employees
end

# app/models/employee.rb
class Employee < ApplicationRecord
  # O funcionário pertence a um time e a um cargo
  belongs_to :team
  belongs_to :job_title
end

# Query 
@employees = Employee.includes(:team, :job_title).order(:cpf)

# View
@employees.each do |employee|
  puts "Nome Completo: #{employee.first_name} #{employee.last_name}"
  puts "Time: #{employee.team.name}"
  puts "Cargo: #{employee.job_title.name}"
end