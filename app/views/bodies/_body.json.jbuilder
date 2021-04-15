json.extract! body, :id, :name, :speed, :efficency, :power, :created_at, :updated_at
json.url body_url(body, format: :json)
