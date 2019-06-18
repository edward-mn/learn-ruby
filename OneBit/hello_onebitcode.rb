puts "Bem-Vindo a Calculadora do Edward"
print "Digite o primeiro número: "
num_um = gets.chomp.to_i
print "Digite o segundo número: "
num_dois = gets.chomp.to_i

Soma = num_um + num_dois
Subtracao = num_um - num_dois 
Multiplicacao = num_um * num_dois
Exponenciacao = num_um ** num_dois
Divisao = num_um / num_dois
Modulo = num_um % num_dois
 
texto_completo = "Soma = #{Soma}, Subtração = #{Subtracao}, Multiplicação = #{Multiplicacao}," + 
                    "Exponenciação = #{Exponenciacao}, Divisão = #{Divisao}, Módulo = #{Modulo}"
puts 'O resultado da operação foi: ' << texto_completo


