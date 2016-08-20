class AddEnderecoToCompra < ActiveRecord::Migration
  def change
    add_reference :compras, :endereco, index: true, foreign_key: true
  end
end
