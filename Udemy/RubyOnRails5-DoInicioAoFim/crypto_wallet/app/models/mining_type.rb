class MiningType < ApplicationRecord
  has_many :coins
  #Has_many fica do lado de onde não tem a ForeignKey mas que tem uma refência na outra
end
