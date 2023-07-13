require 'pg'

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

# Iterar sobre os resultados e processar os dados
result.each do |row|
  coluna1 = row['coluna1']
  coluna2 = row['coluna2']
  coluna3 = row['coluna3']

  # Fazer algo com os dados
  puts "Dados: #{coluna1}, #{coluna2}, #{coluna3}"
end

# Fechar a conexão com o banco de dados
conn.close
