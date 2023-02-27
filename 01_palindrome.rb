class VerificaPalindromo
  def palindromo
    puts "Digite uma Palavra"
    p = gets.chomp
    puts p == p.reverse
  end
end


palindromo