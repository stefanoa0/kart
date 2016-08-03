json.extract! produto, :id, :categoria_produto_id, :nome, :descricao, :preco, :created_at, :updated_at
json.url produto_url(produto, format: :json)