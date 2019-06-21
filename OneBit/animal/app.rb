require_relative 'animal.rb' # É importante já determinar com o 'require_relative' e o diretório de onde o require vem, pois assim o software pode ser executado em diferentes diretório sem causar nenhum erro
require_relative 'cachorro.rb'

puts 'Animal comun'
animal_comun = Animal.new
animal_comun.acoes

puts 'Cachorro'
cachorro = Cachorro.new
cachorro.acoes
cachorro.latir