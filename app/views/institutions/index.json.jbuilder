json.array!(@institutions) do |institution|
  json.extract! institution, :id, :name, :username, :email, :password, :country, :state, :city, :website, :manager, :address, :description
  json.url institution_url(institution, format: :json)
end
