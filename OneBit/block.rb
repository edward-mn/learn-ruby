5.times {puts 'Execução do bloco'}

#Bloco com parametros
soma = 0
numbers = [5, 10, 15]
numbers.each {|number| soma += number}
puts soma

#Blocos com múltiplas linhas
hash_simples = { 1 => 2, 3 => 4}

hash_simples.each do |key, value|
  puts "Key = #{key}"
  puts "value #{value}"
  puts "key * value = #{key * value}"
  puts '---'
end

#criando método que recebe um bloco como parametro
def bloco_generico
  #chama o bloco
  yield
  yield
end

bloco_generico {puts 'Meu bloco genérico'}

#Passando método opcionalmente
def bloco_generico_opcionalmente
  if block_given?
    #chama o bloco
    yield
  else
    puts 'Sem parâmetro na chamada do método'
  end
end

bloco_generico_opcionalmente
bloco_generico_opcionalmente{ puts 'Com parâmetro na chamada do método'}

def bloco_metodo(name, &block) #Só podemos passar um bloco por método
  @name = name #Variáveis internas funcionam pois o bloco esta encapsulado dentro do método 
  block.call #chama para executar
end

bloco_metodo('Edward') {puts "Olá #{@name}"}


def bloco_parametros(numeros, &block)
  if block_given?
    numeros.each do |key, value|
      block.call(key, value)
    end
  end
end

numeros_hash = { 2 => 2, 3 => 3, 4 => 4 }

#1º parametro passamos um hash    2ºÉ o bloco para ser executado 
bloco_parametros(numeros_hash) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "---"*3
end