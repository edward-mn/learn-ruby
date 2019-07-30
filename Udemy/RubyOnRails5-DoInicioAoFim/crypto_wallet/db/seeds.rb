# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#rails db:drop db:create db:migrate db:seed
puts 'Cadastrando moedas...'
Coin.create!(
  description: 'BitCoin',
  acronym: 'BTC',
  url_image: 'http://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png'
)

Coin.create!(
  description: 'Ethereum',
  acronym: 'ETH',
  url_image: 'https://hype.codes/sites/default/files/icons_for_articles/yellow/crypto/ethereum.png'
)

Coin.create!(
  description: 'Dash',
  acronym: 'DASH',
  url_image: 'https://media.dash.org/wp-content/uploads/Dash-D-white.png'
)
puts 'Moedas Cadastradas!'