# 1) Faça uma função que receba uma string e retorne verdadeiro caso ela seja palíndromo,
# do contrário ela deve retornar falso. (palíndromos são palavras ou frases que podem ser
# lidas da esquerda para a direita ou da direita para a esquerda.)

def palindromo
  puts "Digite uma Palavra"
  p = gets.chomp
  puts p == p.reverse
end
palindromo


