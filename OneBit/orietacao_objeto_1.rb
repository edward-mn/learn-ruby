class Esportista
  def competir
    puts 'Participando de uma competição'
  end

  def correr
    puts 'Correndo normal'
  end
end

class JogadorFutebol < Esportista
  def correr 
    puts 'Correndo atrás da bola'
  end
end

class Maratonista < Esportista
  def correr
    puts 'Percorrendo o circuito'
  end
end

class Treinamento < Esportista
  #def competir
   # super
  #end

  def correr
    super
  end
end

meu_jogador = JogadorFutebol.new
meu_maratonista = Maratonista.new
meu_treinamento = Treinamento.new

#Jogador de futebol
meu_jogador.competir
meu_jogador.correr

#Maratonista
meu_maratonista.competir
meu_maratonista.correr

#Treinamento
meu_treinamento.competir
meu_treinamento.correr
