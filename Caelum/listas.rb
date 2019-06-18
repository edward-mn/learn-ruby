class Franquia

  def initialize
    @restaurantes = []
  end

  def adicionar_restaurantes(*restaurantes)
      for restaurante in restaurantes
        @restaurantes << restaurante
      end
  end

  def mostrar_restaurantes
    for restaurante in @restaurantes
      puts restaurante.nome
    end
  end

  def monstra_bloco
    @restaurantes.each do |r|
      puts r.nome
    end
  end
  
  def relatorio
    @restaurantes.each do |r|
      yield r
    end
  end
end

class Restaurante
  attr_accessor :nome

  def fechar_conta(dados)
    puts "Restaurante #{@nome} fechou a conta no valor de #{dados[:valor]} " \
      "e com nota #{dados[:nota]}. Comentário: #{dados[:comentario]}"
  end
end

restaurante_um = Restaurante.new
restaurante_um.nome = 'Fogaça'
restaurante_um.fechar_conta(valor: 50, nota: 9, comentario: 'Muito bom!')

restaurante_dois = Restaurante.new
restaurante_dois.nome = 'Paola'
restaurante_dois.fechar_conta(valor: 77, nota: 3, comentario: 'Podia ser melhor :(')

my_franquia = Franquia.new

my_franquia.adicionar_restaurantes(restaurante_um, restaurante_dois)
my_franquia.mostrar_restaurantes

my_franquia.relatorio do |r|
  puts "Restaurante cadastrado: #{r.nome}"
end


=begin
nomes = []

nomes[0] = 'jose'

for nome in nomes
  puts nome
end
=end