# Atribuição de nota para um Restaurante

# Classe
class Restaurante
  attr_accessor :nota
  #Método initialize = crete é 1º a ser executado
  def initialize(nome) 
    puts "Criando um novo restuarante #{nome}"
    @nome = nome
  end

  #Define método
  def atribui_nota(msg = 'obrigado') 
    puts "A nota do restaurante #{@nome} foi #{@nota}. #{msg}"
  end

=begin
  #Toda propertie pode ser alterada por um attr_accessor
  #Propriedades
  def nota=(nota)
    @nota = nota
  end

  def set_nota
    @nota
  end
=end
end

restaurante_um = Restaurante.new('Fogaça')
restaurante_dois = Restaurante.new('Paola')

restaurante_um.nota = 8
restaurante_dois.nota = 2

restaurante_um.atribui_nota
restaurante_dois.atribui_nota('Comida muito ruim :(')

=begin
# Class
class Fixnum
  def + (outro)
    self - outro # Fazendo a soma subitrair
  end
end

# Class
class Conta
  def transfere_para(destino, quantia)
    debita quantia
    # Mesmo que self.debita(quantia)
    destino.deposita quantia
  end
end
=end