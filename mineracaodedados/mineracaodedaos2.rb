require 'pg'
require 'numo/narray'

# Configuração da conexão com o banco de dados
conn = PG.connect(
  dbname: 'nome_do_banco_de_dados',
  user: 'nome_do_usuario',
  password: 'senha_do_usuario',
  host: 'localhost',
  port: 5432
)

# Consulta SQL para recuperar os dados
query = 'SELECT coluna1, coluna2, coluna3 FROM tabela'

# Executar a consulta SQL
result = conn.exec(query)

# Armazenar os dados em arrays para análise
coluna1_data = []
coluna2_data = []
coluna3_data = []

result.each do |row|
  coluna1_data << row['coluna1'].to_f
  coluna2_data << row['coluna2'].to_f
  coluna3_data << row['coluna3'].to_f
end

# Realizar análises nos dados
coluna1_narray = Numo::DFloat[*coluna1_data]
coluna2_narray = Numo::DFloat[*coluna2_data]
coluna3_narray = Numo::DFloat[*coluna3_data]

media_coluna1 = coluna1_narray.mean
media_coluna2 = coluna2_narray.mean
media_coluna3 = coluna3_narray.mean

desvio_padrao_coluna1 = coluna1_narray.stddev
desvio_padrao_coluna2 = coluna2_narray.stddev
desvio_padrao_coluna3 = coluna3_narray.stddev

# Exibir os resultados
puts "Estatísticas da Coluna 1:"
puts "Média: #{media_coluna1}"
puts "Desvio Padrão: #{desvio_padrao_coluna1}"

puts "Estatísticas da Coluna 2:"
puts "Média: #{media_coluna2}"
puts "Desvio Padrão: #{desvio_padrao_coluna2}"

puts "Estatísticas da Coluna 3:"
puts "Média: #{media_coluna3}"
puts "Desvio Padrão: #{desvio_padrao_coluna3}"

# Fechar a conexão com o banco de dados
conn.close
require 'pg'
require 'numo/narray'

# Configuração da conexão com o banco de dados
conn = PG.connect(
  dbname: 'nome_do_banco_de_dados',
  user: 'nome_do_usuario',
  password: 'senha_do_usuario',
  host: 'localhost',
  port: 5432
)

# Consulta SQL para recuperar os dados
query = 'SELECT coluna1, coluna2, coluna3 FROM tabela'

# Executar a consulta SQL
result = conn.exec(query)

# Armazenar os dados em arrays para análise
coluna1_data = []
coluna2_data = []
coluna3_data = []

result.each do |row|
  coluna1_data << row['coluna1'].to_f
  coluna2_data << row['coluna2'].to_f
  coluna3_data << row['coluna3'].to_f
end

# Realizar análises nos dados
coluna1_narray = Numo::DFloat[*coluna1_data]
coluna2_narray = Numo::DFloat[*coluna2_data]
coluna3_narray = Numo::DFloat[*coluna3_data]

media_coluna1 = coluna1_narray.mean
media_coluna2 = coluna2_narray.mean
media_coluna3 = coluna3_narray.mean

desvio_padrao_coluna1 = coluna1_narray.stddev
desvio_padrao_coluna2 = coluna2_narray.stddev
desvio_padrao_coluna3 = coluna3_narray.stddev

# Exibir os resultados
puts "Estatísticas da Coluna 1:"
puts "Média: #{media_coluna1}"
puts "Desvio Padrão: #{desvio_padrao_coluna1}"

puts "Estatísticas da Coluna 2:"
puts "Média: #{media_coluna2}"
puts "Desvio Padrão: #{desvio_padrao_coluna2}"

puts "Estatísticas da Coluna 3:"
puts "Média: #{media_coluna3}"
puts "Desvio Padrão: #{desvio_padrao_coluna3}"

# Fechar a conexão com o banco de dados
conn.close
