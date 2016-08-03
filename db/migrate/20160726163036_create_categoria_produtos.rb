class CreateCategoriaProdutos < ActiveRecord::Migration
  def change
    create_table :categoria_produtos do |t|
      t.string :nome_categoria

      t.timestamps null: false
    end
  end
end
