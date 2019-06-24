# Missão 1
lambda_capitalize = ->(nome) {puts nome.capitalize}

def capitalize_name(lambda)
  lambda.call('edward')
  lambda.call('Vagner')
end

capitalize_name(lambda_capitalize)

#Missão 2
module Person
  class Physical
    attr_accessor :nome, :documento
    def initialize(nome, documento)
      @nome = nome
      @documento = documento
    end

    def add
      puts 'Pessoa Física Adicionada'
      puts "Nome: #{@nome}"
      puts "CPF: #{@documento}"
      puts "-" * 30
    end
  end
    
  class Juridic 
    attr_accessor :nome, :documento
    def initialize(nome, documento)
      @nome = nome
      @documento = documento
    end

    def add
      puts 'Pessoa Jurídica Adicionada'
      puts "Nome: #{@nome}"
      puts "CNPJ: #{@documento}"
      puts "-" * 30
    end
  end
end

Person::Physical.new('José Almeida', '123.456.789-000').add
Person::Juridic.new('M. C. Investimentos', '1234.567/8900').add