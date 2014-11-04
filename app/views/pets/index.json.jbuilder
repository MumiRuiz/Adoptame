json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :kind, :age, :gender, :size, :story
  json.url pet_url(pet, format: :json)
end
