json.extract! user, :id, :fname, :lname, :email, :password, :age, :created_at, :updated_at
json.url user_url(user, format: :json)
