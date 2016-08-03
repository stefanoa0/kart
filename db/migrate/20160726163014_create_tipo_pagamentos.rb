class CreateTipoPagamentos < ActiveRecord::Migration
  def change
    create_table :tipo_pagamentos do |t|
      t.string :tipo

      t.timestamps null: false
    end
  end
end
