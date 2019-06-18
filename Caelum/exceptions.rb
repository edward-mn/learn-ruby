=begin
print 'Digite um número: '
numero = gets.to_i

begin
  resultado = 100 / numero
#Exceção que é lançada apenas no console ocultando seu tipo (só aparece a msg)
rescue
  puts "Número digitado inválido!"
  exit
end

puts "100/#{numero} é #{resultado}"
=end

=begin
class Validation
  def verifica_idade(idade)
    unless idade >= 18
#Exeção completa mostrando exatamente onde ocorreu seguida de seu método e tipo
      raise ArgumentError,
        "Você precisa ser maior de idade para jogar jogos violentos."
    end
      puts "Parabéns você pode jogar :)"
  end
end

class Validation_Idade_Exception < Exception
end

def valida_idade(idade)
  raise Validation_Idade_Exception,
    "Olha você tem que ser maior de idade..." unless idade >= 18
end
#valida_idade(15)

begin
  valida_idade(15)    
rescue Validation_Idade_Exception >= e
  puts "Foi lançada a exception: #{e}"
end
valida_idade(15)
pessoa = Validation.new
pessoa.verifica_idade(17)
=end

=begin
def pesquisa_banco(nome)
  if nome.size < 10
    throw :nome_invalido, 'Nome invalido, digite novamente'
  end
  #Executa pesquisa
  "Cliente: #{nome}"
end

def executa_pesquisa(nome)
  catch :nome_invalido do
    cliente = pesquisa_banco(nome)
    return cliente
  end
end

puts executa_pesquisa('Edward')

puts executa_pesquisa('João de Almeida')
=end

print "Escreva um texto: "
texto = gets
File.open( "caelum.txt", "w") do |f|
  f << texto
end

Dir.entries('caelum').each do |file_name|
  idea = File.read( file_name )
  puts idea
end

#Requisição em HTTP
require 'net/http'
Net::HTTP.start( 'www.caelum.com.br', 80) do |http|
  print( http.get('/').body )
end
  