require 'tty-spinner'

namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Deletando') { %x(rails db:drop) }
      show_spinner('Criando') { %x(rails db:create) }
      show_spinner('Migrando') { %x(rails db:migrate) }
      show_spinner('Populando') { %x(rails db:seed) }
    else
      puts 'Não é possível executar esta task neste ambiente'
    end
  end

private
  def show_spinner(msg_start, msg_end = 'Concluído com sucesso!')
    spinner = TTY::Spinner.new("[:spinner] #{msg_start} Banco de Dados.....")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
#Criando task (rails g task <NameSpace> <NomeTask>)
#Filtrando task (rails -T) ou (rails -T <NameSpace>)
#Executando task (rails <NameSpace>:<NomeTaks>)
