json.extract! articla, :id, :title, :body, :created_at, :updated_at
json.url articla_url(articla, format: :json)
