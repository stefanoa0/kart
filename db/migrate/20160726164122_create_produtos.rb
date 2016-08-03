class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.references :categoria_produto, index: true, foreign_key: true
      t.string :nome
      t.text :descricao
      t.float :preco

      t.timestamps null: false
    end
  end
end
