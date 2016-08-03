class CreatePagamentos < ActiveRecord::Migration
  def change
    create_table :pagamentos do |t|
      t.integer :num_parcelas
      t.references :tipo_pagamento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
