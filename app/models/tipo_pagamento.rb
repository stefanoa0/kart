class TipoPagamento < ActiveRecord::Base
  
   PAGAMENTO = [
    ['Á vista', 0],
    ['Parcelado', 1]
  ]
  
end
