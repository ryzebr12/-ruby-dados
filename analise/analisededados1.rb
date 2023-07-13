require 'numo/narray'

def calcular_estatisticas(numeros)
  narray = Numo::DFloat[*numeros]
  media = narray.mean
  desvio_padrao = narray.stddev
  maximo = narray.max
  return media, desvio_padrao, maximo
end

# Obter os números do usuário
puts "Digite os números separados por espaço:"
entrada = gets.chomp
numeros = entrada.split.map(&:to_f)

# Calcular estatísticas
media, desvio_padrao, maximo = calcular_estatisticas(numeros)

# Exibir os resultados
puts "Média: #{media}"
puts "Desvio Padrão: #{desvio_padrao}"
puts "Máximo: #{maximo}"
