class Produto < ActiveRecord::Base
  belongs_to :categoria_produto
  
  
  has_attached_file :imagem, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/missing.jpg"
  do_not_validate_attachment_file_type :imagem
  
  
end
