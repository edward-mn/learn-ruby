require 'cpf_cnpj'

def valida_cpf_cnpj(numero)
  tipo_documento = ''
  numero_formatado = 0
  unless numero == 0
      #CPF.valid?(numero)
    if numero.to_s.length == 11
      tipo_documento = 'CPF'  
      numero_cpf = CPF.new(numero)
      numero_formatado = numero_cpf.formatted

      if numero_cpf.valid?
        documento_status = 'Válido'
      else
        documento_status = 'Inválido'
      end
    elsif numero.to_s.length == 14 
      tipo_documento = 'CNPJ'
      numero_cnpj = CNPJ.new(numero)
      numero_formatado = numero_cnpj.formatted

      if numero_cnpj.valid?
        documento_status = 'Válido'
      else
        documento_status = 'Inválido'
      end
    else
      puts 'O número digitado é maior que a quantidade de número para um CPF ou CNPJ'
      exit
    end
      puts "O #{tipo_documento} digitado foi #{numero_formatado} e é um documento #{documento_status}"
  else
    puts 'É necessário digitar um número'
  end
end

print 'Digite um número de CPF ou CNPJ: '
numero_documento = gets.chomp.to_i
valida_cpf_cnpj(numero_documento)

=begin
Comandos uteis para geração de CPF e CNPJ através da gem (so trocara nomenclatura para fazer o mesmo com CNPJ)
  cpf --check 532.820.857-96
  $ $?
  0

  $ cpf --check 53282085796
  $ $?
  0

  $ cpf --format 53282085796
  532.820.857-96

  $ cpf --strip 532.820.857-96
  53282085796

  $ cpf --generate
  417.524.931-17

  $ cpf --generate --strip
  76001454809

  $ echo 76001454809 | cpf -f
  760.014.548-09
=end