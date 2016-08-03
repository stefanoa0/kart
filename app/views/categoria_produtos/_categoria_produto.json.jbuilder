json.extract! categoria_produto, :id, :nome_categoria, :created_at, :updated_at
json.url categoria_produto_url(categoria_produto, format: :json)