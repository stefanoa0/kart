class Pagamento < ActiveRecord::Base
  belongs_to :tipo_pagamento
end
