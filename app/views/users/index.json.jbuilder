json.array!(@users) do |user|
  json.extract! user, :id, :lname, :fname, :username, :password
  json.url user_url(user, format: :json)
end
