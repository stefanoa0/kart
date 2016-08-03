class Compra < ActiveRecord::Base
  belongs_to :pagamento
  belongs_to :cliente
end
