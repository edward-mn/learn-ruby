require_relative 'produto.rb'
require_relative 'mercado.rb'

puts '- Bem-vindo a vendinha do Edward -'
print 'Digite o nome do produto que deseja comprar: '
nome_produto = gets.chomp
print 'Agora digite seu preço: '
preco_produto = gets.chomp.to_f

produto_novo = Produto.new(nome_produto, preco_produto)
meu_mercado = Mercado.new(produto_novo).comprar
