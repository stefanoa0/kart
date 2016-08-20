class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.string :bairro
      t.string :numero
      t.string :cidade
      t.string :estado

      t.timestamps null: false
    end
  end
end
