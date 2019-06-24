module Palavra
  def self.palavra_inversa texto
    print texto.reverse.to_s
    print ' <---módulo---| '
  end

  class ClassPalavra
    def palavra_normal texto
      print texto
      print ' <---Classe---| '
    end
  end
end

Palavra::palavra_inversa 'O resultado é'
my_palavra = Palavra::ClassPalavra.new
my_palavra.palavra_normal 'O resultado é'