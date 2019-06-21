class Mercado < Produto
  def initialize (produto)
    @produto = produto
  end

  def comprar
    unless @produto.nome == '' || @produto.preco == 0
      puts "Você comprou o produto #{@produto.nome.capitalize} no valor de R$: #{@produto.preco}"
    else
      puts 'Desculpe não oferecemos produto de graça ou produtos sem nome!'
    end
  end
end