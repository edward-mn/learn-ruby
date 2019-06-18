puts "Bem-Vindo a Calculadora do Edward"
print "Digite o primeiro número: "
num_um = gets.chomp.to_i
print "Digite o segundo número: "
num_dois = gets.chomp.to_i

Soma = num_um + num_dois
Subtração = num_um - num_dois 
Multiplicação = num_um * num_dois
Exponenciação = num_um ** num_dois
Divisão = num_um / num_dois
Modulo = num_um % num_dois
 
texto_completo = "Soma = #{Soma}, Subtração = #{Subtração}, Multiplicação = #{Multiplicação}," + 
                    "Exponenciação = #{Exponenciação}, Divisão = #{Divisão}, Módulo = #{Modulo}"
puts 'O resultado da operação foi: ' << texto_completo


