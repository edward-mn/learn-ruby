#Lambda nada mais é que um objeto que pode ser amazenado e consultado informações
#Pode ser definido com a nomenclatura "lambda" ou "->" antes de seu conteúdo
primeiro_lambda = lambda { puts "meu primeiro lambda"}
primeiro_lambda.call

lambda_parametro = ->(nomes) { nomes.each { |nome |puts nome } }

alguns_nomes = ['Edward', 'Vagner', 'Ruiz']

lambda_parametro.call(alguns_nomes)

lambda_multiplas_linhas = lambda do |numeros| #Lambda de múltiplas linhas é necessário escrever seu nome e não o seu sinal
  index = 0
  puts 'Número atual + Próximo número'
  numeros.each do |numero|
    return if numeros[index] == numeros.last
    puts "(#{numeros[index]}) + (#{numeros[index + 1]})"
    puts numeros[index] + numeros[index + 1]
    index += 1
  end
end

my_numeros = [1, 2, 3, 4]
lambda_multiplas_linhas.call(my_numeros)

#Passando mais de um argumento lambda para um método
def multiplos_lambda_argumentos(primeiro_lambda, segundo_lambda)
  primeiro_lambda.call
  segundo_lambda.call
end

lambda1 = lambda { puts 'Esse é o lambda 1'}
lambda2 = -> { puts 'Esse é o lambda 2'}

multiplos_lambda_argumentos(lambda1, lambda2)