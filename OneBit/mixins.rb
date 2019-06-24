module ImpressaoDecorada
  def imprimir texto
    decoracao = '#' * 100
    puts decoracao
    puts texto
    puts decoracao
  end
end

module Pernas
  include ImpressaoDecorada #Incluido ou Mixando o module

  def chute_frontal
    imprimir 'Chute Frontal'
  end

  def chute_lateral
    imprimir 'Chute Lateral'
  end
end

module Bracos
  include ImpressaoDecorada 

  def jab_de_direita
    imprimir 'Jab de direita'
  end

  def jab_de_esquerda
    imprimir 'Jab de esquerda'
  end

  def gancho
    imprimir 'Gancho'
  end
end

class LutadorX
  include Pernas
  include Bracos
end

class LutadorY
  include Pernas
end

o_lutadorX = LutadorX.new
o_lutadorX.jab_de_esquerda
o_lutadorX.chute_lateral

a_lutadoraY = LutadorY.new
a_lutadoraY.chute_frontal
 