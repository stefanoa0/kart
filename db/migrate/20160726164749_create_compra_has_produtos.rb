class CreateCompraHasProdutos < ActiveRecord::Migration
  def change
    create_table :compra_has_produtos do |t|
      t.references :compra, index: true, foreign_key: true
      t.references :produto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
