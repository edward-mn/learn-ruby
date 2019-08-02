class Coin < ApplicationRecord
  belongs_to :mining_type #, optional: true (Torna o campo opicional)
  #Belongs_to fica do lado de onde tem a ForeignKey
end

#var.map { |my_var| my_var.campo} = retorna um array de tudo que estiver dentro de campo,
# e podemos adicionar mais utilizando [my_var.campo, my_var.campo2 ...]
#var.mao(&:campo) = retorna um array de SOMENTE 1 campo e não pode adicionar mais
#var.pluck(:campo, :campo2 ...) retorna uma array de quantos campos houver dentro do ( )