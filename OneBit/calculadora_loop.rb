resultado = ''
opcao = ''
msg_opcao_invalida = ''
num_denominador = ''
num_nomimador = ''
marcador = "=" * 20

loop do
  unless resultado == ''
    puts "\n O resultado da operação entre #{num_denominador} e #{num_nomimador} foi: #{resultado}"
    resultado = ''
  end
  unless msg_opcao_invalida == ''
    puts msg_opcao_invalida
    msg_opcao_invalida = ''
  end  
  
  if num_denominador == '' && num_nomimador == ''
    puts marcador + ' Bem-Vindo a Calculadora do Edward ' + marcador

    print 'Agora insira um número para ser o Denominador: '
    num_denominador = gets.chomp.to_i
    print 'Agora insira um número para ser o Nomimador: '
    num_nomimador = gets.chomp.to_i
    puts
  end

  puts marcador + ' Menu ' + marcador
  puts 'Selecione uma das operações aritiméticas abaixo:'
  puts '1 - Soma' 
  puts '2 - Subtração'
  puts '3 - Multiplicação'
  puts '4 - Divisão'
  puts '5 - Exponenciação'
  puts '6 - Módulo'
  puts '0 - Sair'
  print 'Opção: '

  opcao = gets.chomp.to_i
  unless opcao == ''
    if opcao == 1
      resultado = num_denominador + num_nomimador
    elsif opcao == 2
      resultado = num_denominador - num_nomimador
    elsif opcao == 3
      resultado = num_denominador * num_nomimador
    elsif opcao == 4
      resultado = num_denominador / num_nomimador
    elsif opcao == 5
      resultado = num_denominador ** num_nomimador
    elsif opcao == 6
      resultado = num_denominador % num_nomimador
    elsif opcao == 0
      break
    else
      msg_opcao_invalida = 'Por favor digite uma opção inválida'
    end
  end
  system 'clear'
end