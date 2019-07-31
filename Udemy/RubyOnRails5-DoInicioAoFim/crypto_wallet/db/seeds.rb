# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#rails db:drop db:create db:migrate db:seed
=begin
spinner = TTY::Spinner.new('[:spinner] Registrando moedas...')
spinner.auto_spin

def registring_coins(name_coin, acronym_coin, url_image_coin)
  {
    description: name_coin,
    acronym: acronym_coin,
    url_image: url_image_coin
  }
end

coins =
  [
    registring_coins('BitCoin', 'BTC', 'http://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png'),
    registring_coins('Ethereum', 'ETH', 'https://hype.codes/sites/default/files/icons_for_articles/yellow/crypto/ethereum.png'),
    registring_coins('Dash', 'DASH', 'https://media.dash.org/wp-content/uploads/Dash-D-white.png'),
    registring_coins('Iota', 'IOT', 'https://cdn.imgbin.com/13/2/21/imgbin-iota-cryptocurrency-logo-internet-of-things-tether-bitcoin-BLzgLYBGwqhjJnJJamnq1c5uC.jpg'),
    registring_coins('ZCash', 'ZEC', 'https://cdn4.iconfinder.com/data/icons/cryptocurrency-vanilla-coins/90/Coin-ZEC-Vanilla-512.png')
  ]

coins.each do |coin|
  sleep(0.5)
  Coin.find_or_create_by(coin)
end

spinner.success('(Concluído com sucesso!)')
=end



#Usar a task do rails dev:setup (lib/tasks/dev.rake)