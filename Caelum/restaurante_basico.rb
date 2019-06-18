=begin
1)Strings
puts "Digite o nome do restaurante"
nome = gets
print "Nome do restaurante: "
p nome<<" teste"
=end

=begin
2)Interpolação de String com Método Capitalize
puts "Digite o nome do restaurante"
nome = gets
#Método Capitalize não altera a váriavel mas sim cria uma nova
print "Nome do restaurante: #{nome.capitalize}"
puts nome
#Utilizando (!) altera permanentemente o valor da string, use com cuidado
print nome.capitalize!
puts nome

#Final do exercício 2
puts "Digite o nome do restaurante"
nome = gets
print "Nome do restaurante: #{nome.capitalize}"
=end

=begin
#Tipos
puts 3.class
puts 3333333333333333333333333333.class

#Conta
puts 3*(2+5)/8

#Estrutura de controle (==, >, <, >=, <=, && = and, || = or)
puts 3>2
puts 3+4-2 <= 3*2/4


variavel = nil
# variavel = gets 
if(variavel)
  puts("so iria imprimir se variavel != null")
end
if(3 == 3)
  puts("3 é 3")
end


#Switch com Método
def procura_sede_copa_do_mundo( ano )
  case ano
  when 1895..2005
	"Não lembro...:)"
  when 2006
	"Alemanha"
  when 2010
	"África do Sul"
  when 2014
	"Brasil"
  end
end

puts procura_sede_copa_do_mundo(2014)

#Com IF
def procura_sede_copa_do_mundo( ano )
  if 2006 == ano
	"Alemanha"
  elsif 2010 == ano
	"África do Sul"
  elsif 2014 == ano
	"Brasil"
  elsif (1895..2005) == ano #Range integer precisa vir com parênteses 
	"Não lembro... :)"
  end
end

puts procura_sede_copa_do_mundo(2006)
=end

=begin
#Integração simples com For
for i in (1..33) do
  puts "Interação Nº: #{i}"
end
=end

=begin
# ||= este simbolo só atribui valores em variáveis vázias
nome = nil
nome ||= "Vagner"
puts nome
nome = "Edward"
puts nome
nome ||= "José"
puts nome
=end


=begin
#Resposta escritas Exercícios 3.13
1) Funciona por conta da concatenação simples de string
2) Funciona pois ele fará a soma imprimirá
3) Funciona por conta interpolação que aprendemos no começo do capítulo
4) Não Funciona por conta da aspas simples, a interpolação obriga utilizar aspas duplas para utilização dessa funcionalidade
6) Por conta de ser uma classe nativa do Ruby
=end

=begin
#Interpolação
def pessoas_vai(lugar)
  "indo para #{lugar}"
end

puts pessoas_vai('casa')
=end


def pessoa_troca(pessoa, roupa, lugar = 'quarto')
  "#{pessoa.capitalize} trocando de #{roupa.capitalize} no #{lugar.capitalize}"
end

puts pessoa_troca('edward', 'casaco')
puts pessoa_troca('jose', 'casaco', 'banheiro')
