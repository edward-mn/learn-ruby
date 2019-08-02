require 'tty-spinner'

namespace :dev do
  if Rails.env.development?
    desc 'Configura o ambiente de desenvolvimento'
    task setup: :environment do
      show_spinner('Deletando') { %x(rails db:drop) }
      show_spinner('Criando') { %x(rails db:create) }
      show_spinner('Migrando') { %x(rails db:migrate) }
      %x(rails dev:add_mining_types)
      %x(rails dev:add_coins)
    end

    desc 'Cadastra moedas'
    task add_coins: :environment do
      show_spinner('Populando') do
        coins =
          [
            registring_coins('BitCoin', 'BTC', 'http://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png'),
            registring_coins('Ethereum', 'ETH', 'https://hype.codes/sites/default/files/icons_for_articles/yellow/crypto/ethereum.png'),
            registring_coins('Dash', 'DASH', 'https://media.dash.org/wp-content/uploads/Dash-D-white.png'),
            registring_coins('Iota', 'IOT', 'https://cdn3.iconfinder.com/data/icons/cryptoicons-glyph-pack/256/IOTA_Glyph-512.png'),
            registring_coins('ZCash', 'ZEC', 'https://cdn4.iconfinder.com/data/icons/cryptocurrency-vanilla-coins/90/Coin-ZEC-Vanilla-512.png')
          ]

        coins.each do |coin|
          Coin.find_or_create_by!(coin)
        end
      end
    end

    desc 'Cadastra os tipos de mineração'
    task add_mining_types: :environment do
      show_spinner('Populando tipos de mineração') do
        mining_types = [
          {description: 'Proof of Work', acronym: 'PoW'},
          {description: 'Proof of Stake', acronym: 'PoS'},
          {description: 'Proof of Capacity', acronym: 'PoC'}
        ]

        mining_types.each do |mining_type|
          MiningType.find_or_create_by!(mining_type)
        end
      end
    end
  else
    puts 'Não é possível executar esta task neste ambiente'
  end

  private

  def show_spinner(msg_start, msg_end = 'Concluído com sucesso!')
    spinner = TTY::Spinner.new("[:spinner] #{msg_start} Banco de Dados.....")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end

  def registring_coins(name_coin, acronym_coin, url_image_coin)
    {
      description: name_coin,
      acronym: acronym_coin,
      url_image: url_image_coin,
      mining_type: MiningType.all.sample
    }
#MiningType.where(acronym: 'PoW') = Retorna vários registros
#MiningType.where(acronym: 'PoW').first = Retorna somente o primeiro elemento
#MiningType.find(acronym: 'PoW') = Aceita somente ID
#MiningType.find_by(acronym: 'PoW') = Permite diversas pesquisar
#MiningType.all.sample = Randon das opçãos do controler MiningType
  end
end
#Criando task (rails g task <NameSpace> <NomeTask>)
#Filtrando task (rails -T) ou (rails -T <NameSpace>)
#Executando task (rails <NameSpace>:<NomeTaks>)