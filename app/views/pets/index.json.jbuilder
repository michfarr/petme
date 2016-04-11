json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :image, :type, :price, :rating, :description
  json.url pet_url(pet, format: :json)
end
