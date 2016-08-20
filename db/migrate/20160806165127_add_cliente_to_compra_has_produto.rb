class AddClienteToCompraHasProduto < ActiveRecord::Migration
  def change
    add_reference :compra_has_produtos, :cliente, index: true, foreign_key: true
  end
end
