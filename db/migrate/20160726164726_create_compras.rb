class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.datetime :data
      t.integer :quantidade
      t.references :pagamento, index: true, foreign_key: true
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
