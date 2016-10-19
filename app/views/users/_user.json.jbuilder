json.extract! user, :id, :username, :nickname, :pw, :grade, :created_at, :updated_at
json.url user_url(user, format: :json)