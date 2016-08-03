json.extract! pagamento, :id, :num_parcelas, :tipo_pagamento_id, :created_at, :updated_at
json.url pagamento_url(pagamento, format: :json)