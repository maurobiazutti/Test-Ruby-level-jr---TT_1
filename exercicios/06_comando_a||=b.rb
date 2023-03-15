#6) Descreva o que faz o seguinte comando e por que ele é amplamente utilizado: a ||= b


# Significa: Se a for indefinido, nil ou false, atribua b a a.
# Caso contrário, mantenha a intacto.
#
# Pode usá-lo no Rails para armazenar variáveis de instância em modelos.
#
# Exemplo Rails, onde criamos uma função para buscar o usuário atualmente logado:
#
# class User > ActiveRecord::Base
#
#   def current_user
#     @current_user ||= User.find_by_id(session[:user_id])
#   end
#
# end
# Ele verifica se a variável de instância @current_user está definida.
# Se for, ele retornará, salvando assim uma chamada de banco de dados.
# Se não estiver definido, no entanto, fazemos a chamada e, em seguida,
# definimos a variável @current_user para isso.

# a = nil
# a = false
a = 2
b = 3

puts a||=b