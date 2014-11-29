json.array!(@admin_pets) do |admin_pet|
  json.extract! admin_pet, :id, :name, :kind, :age, :gender, :size, :story, :city, :country, :region, :user_id, :institution_id
  json.url admin_pet_url(admin_pet, format: :json)
end
