def calcular_media(numeros)
  total = numeros.reduce(0, :+)
  media = total / numeros.length.to_f
  return media
end

# Obter os números do usuário
puts "Digite os números separados por espaço:"
entrada = gets.chomp
numeros = entrada.split.map(&:to_i)

# Calcular a média
media = calcular_media(numeros)

# Exibir o resultado
puts "A média é: #{media}"
