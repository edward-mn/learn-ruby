class Valida_Telefone
  def usa_telefone_default?(numero)
    unless numero == ''
      regex_telefone(numero)
    else
      regex_telefone
    end
  end
 
  private
  def regex_telefone(telefone_formato_correto = '(99) 7 4321-1234')
    regex_encontrado = !!telefone_formato_correto.match(/\(\d{2}\)\s\d\s\d{4}-\d{4}/)
    if regex_encontrado
      puts "Olá, tudo bem? Meu whats app é: #{telefone_formato_correto}"
    else
      puts 'Desculpa o número não está no formato correto'
    end
    puts "O resultado utilizando Regex foi: #{regex_encontrado}"
  end
end

print 'Programando para dizer seu whats, mas antes favor inserir seu número de telefone: '
numero_telefone = gets.chomp
Telefone = Valida_Telefone.new.usa_telefone_default?(numero_telefone)