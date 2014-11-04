json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password, :country, :state, :city, :description
  json.url user_url(user, format: :json)
end
