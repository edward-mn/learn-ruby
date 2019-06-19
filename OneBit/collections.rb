#Desafio 1 - Utilizando uma collection do tipo Array, escreva um programa que receba 3 números e no final exiba o resultado de cada um deles elevado a segunda potência.
puts 'Exercício 1'
array = [2, 3, 4]

array.each do |elevado_segunda_potencia|
  puts elevado_segunda_potencia**2
end

#Desafio 2 -  Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave e o valor. No final do programa para cada um desses elementos imprima a frase “Uma das chaves é **** e o seu valor é ****”
puts 'Exercício 2'
hash = {0 => 'BackEnd', 1 => 'FrontEnd', 2 => 'FullStack'} 

hash_tres_valores = hash.select do |key, value|
  puts "Uma das chaves é #{key} e o seu valor é #{value}"
end

#Desafio 3 - Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e valor do elemento resultante.
puts 'Exercício 3'
hash_numeros = {Letra_A: 10, Letra_B: 30.20, Letra_C: 20, Letra_D: 25, Letra_E: 15}
highest_position_hash = hash_numeros.sort_by{ |key, value| value}.to_h #Se passace o -value depois do bloco ele inverteria a posição
puts "Maior chave: #{highest_position_hash.keys.last} - Maior Valor: #{highest_position_hash.values.last}"