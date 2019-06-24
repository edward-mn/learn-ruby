class Foo
  attr_accessor :teste
  def bar
    puts self
  end
end

my_foo = Foo.new
puts my_foo
my_foo.bar

#Método de classe, não precisa de instância
class Foo
  def self.bar1
    puts self
  end
end

Foo.bar1

#Acessando variáveis de instância dentro de uma classe através do self
class Pen
  attr_accessor :color
  def pen_color
    puts "The color is " + self.color
  end
end

the_pen = Pen.new
the_pen.color = 'blue'
the_pen.pen_color
