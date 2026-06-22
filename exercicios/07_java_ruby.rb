=begin
7) Qual a principal diferença entre estes dois métodos?

// JAVA
public boolean inEmpty(String s) {
  return s.length() == 0;
}

# RUBY
def empty?(s)
  return s.size == 0 
end

A lógica dos dois métodos é equivalente.
A maior diferença conceitual é que Ruby trata tudo como objetos e usa tipagem dinâmica, 
enquanto Java exige declaração explícita dos tipos. 
=end