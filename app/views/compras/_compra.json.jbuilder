json.extract! compra, :id, :data, :quantidade, :pagamento_id, :cliente_id, :created_at, :updated_at
json.url compra_url(compra, format: :json)