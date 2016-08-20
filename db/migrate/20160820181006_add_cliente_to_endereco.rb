class AddClienteToEndereco < ActiveRecord::Migration
  def change
    add_reference :enderecos, :cliente, index: true, foreign_key: true
  end
end
