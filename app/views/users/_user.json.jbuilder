json.extract! user, :id, :name, :age, :email, :username, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
