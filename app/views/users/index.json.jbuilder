json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password, :isadmin
  json.url user_url(user, format: :json)
end
