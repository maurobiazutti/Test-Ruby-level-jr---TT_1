# 8) Qual o significado do self nas classes ruby?

# Em Ruby, self faz referencia ao objeto que está executando o codigo naquele momento.

# Self como Metodo de Class
# Quando o self. vem antes do nome do metodo dentro de uma class, 
# isso significa que o metodo pertence a class em si e não uma instâcia (objeto) criado por ela.

# Ex:
class Carro
  # Um método de classe usando self
  def self.descricao
    "Eu sou a classe Carro, sirvo de molde para criar carros!"
  end
end

# Você chama direto na Classe:
puts Carro.descricao # Saída: Eu sou a classe Carro...