class CompraHasProduto < ActiveRecord::Base
  belongs_to :compra
  belongs_to :produto
end
