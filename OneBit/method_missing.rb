class Fish
  #método missing
  def method_missing(method_name)
    puts "Fish don't have #{method_name.capitalize} behavior"
  end

  def swim
    puts 'Fish is swimming'
  end
end

my_fish = Fish.new
my_fish.swim
my_fish.walk #Aqui o método missing é acionado