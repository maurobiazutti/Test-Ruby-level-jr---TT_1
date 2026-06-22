=begin
2) Faça uma função que receba uma string contendo um CPF e verifique se ele está
formatado de acordo com a máscara 999.999.999-99. A função deve usar regex para fazer
a validação da máscara e deve retornar verdadeiro ou falso.
=end

cpf_valido = "461.636.517-23"
cpf_invalido = "12345678900"

def valida_formato_cpf(cpf)
  regex_cpf = /^\d{3}\.\d{3}\.\d{3}-\d{2}$/
  
  if cpf =~ regex_cpf
    puts "Formato válido!"
  else
    puts "Formato inválido!"
  end
end

valida_formato_cpf(cpf_valido) 
valida_formato_cpf(cpf_invalido)

################## OUTRA MANEIRA DE VERIFICAR #####################
def verifica_cpf?(str)
  !!(str =~ /^[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}$/)
end
p verifica_cpf?(cpf_valido)
p verifica_cpf?(cpf_invalido)

