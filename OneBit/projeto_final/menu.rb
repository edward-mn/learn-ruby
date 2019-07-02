require_relative 'translate_language'
require_relative 'avaliable_languages'
require_relative 'detect_language'

class Menu
  MSG_ERROR = 'Sorry,but for use de translation you have to insert a phrase'
  
  def start_application
    marcador = '-'*30
    puts marcador + ' Welcome to simple translate aplication ' + marcador
    puts 'Please select a operation below:'
    puts '1 - Avaliable Languages'
    puts '2 - Detect Language'
    puts '3 - Translate Language'
    puts '0 - Exit'
    print 'Opção: '

    opcao = gets.chomp.to_i
    unless opcao == ''
    case opcao
      when 1
        define_imputs(AvaliableLanguages)
      when 2
        define_imputs(DetectLanguage)
      when 3
        define_imputs(TranslateLanguage)
      when 0
        exit 
      else
        puts "Sorry,has not a functionality for option #{opcao}"
      end
    end
  end

  private
  def define_imputs(_class) #Do something according to class
    text = '', code = ''
    if _class == AvaliableLanguages
      puts "Language Avaliabels..."
      _class = AvaliableLanguages.new
    elsif _class == DetectLanguage
      print 'Please insert a phrase to detect the laguage that was used: '
      text = gets.chomp
      unless text == ''
        puts "Detect Language..."
        _class = DetectLanguage.new(text)
      else
        puts "#{MSG_ERROR}"
      end
    else
      print 'Please insert a phrase to translate: '
      text = gets.chomp
      print 'Now insert the code that you have seen on the Avaliable Languages: '
      code = gets.chomp
      unless text == '' || code == ''
        puts "Translate Language..."
        _class = TranslateLanguage.new(text, code)
      else
        puts "#{MSG_ERROR + ' and a code'}"
      end
    end
  end
end

