json.array!(@admin_institutions) do |admin_institution|
  json.extract! admin_institution, :id, :name, :username, :email, :password, :country, :state, :city, :website, :manager, :address, :description
  json.url admin_institution_url(admin_institution, format: :json)
end
