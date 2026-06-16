# 1) Faça uma função que receba uma string e retorne verdadeiro caso ela seja palíndromo,
# do contrário ela deve retornar falso. (palíndromos são palavras ou frases que podem ser
# lidas da esquerda para a direita ou da direita para a esquerda.)


##### Usando metodo reverse #######
def palindromo
  puts "Digite uma Palavra"
  palavra = gets.chomp
  puts palavra == palavra.reverse
end
# palindromo


############# Usando Ruby Puro ###############
arara = "arara"
ruby = "ruby"

def palindromo(strg)
  invertido = ""
  strg.each_char do |char|
    invertido = char + invertido
  end
    puts strg == invertido
end
palindromo(arara)
palindromo(ruby)

