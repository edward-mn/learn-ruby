=begin
# Variável GLOBAL
class Bar
  def foo
    # Variáveis com $ são definidas como variáveis globais
    $global = 0 
    puts $global
  end
end

class Baz
  def qux
    $global += 1
    puts $global
  end
end

bar = Bar.new
baz = Baz.new
bar.foo
baz.qux
baz.qux
puts $global
=end

=begin
#Variável de CLASSE
class User
  @@contador_usuario = 0 # A variável de classe é determinada através do @@ antes de seu nome
  def adicionar_usuario(usuario)
    puts "O usuário #{usuario.capitalize} foi adicionado"
    @@contador_usuario += 1
    puts @@contador_usuario
  end
end

primeiro_usuario = User.new
primeiro_usuario.adicionar_usuario('edward')

segundo_usuario = User.new
segundo_usuario.adicionar_usuario('roberto')
=end

=begin
#Variáveis de instância
class User
  def adicionar_usuario(nome)
    unless nome == ''
      @nome = nome #@nome é privado (atributo da classe)
      puts 'Usuário adicionado'
      bem_vindo
    end
  end

  def bem_vindo
    puts "Seja bem vindo, #{@nome}!"
  end
end

novo_usuario = User.new
novo_usuario.adicionar_usuario('Edward')
=end

class Dog
  attr_accessor :name, :age #atributos (simples pode ler e escrever)
end

my_dog = Dog.new
my_dog.name = 'Marlon'
my_dog.age = '2 anos'
puts my_dog.name
puts my_dog.age
