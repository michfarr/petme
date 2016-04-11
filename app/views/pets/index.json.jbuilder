json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :image, :category, :price, :rating, :description
  json.url pet_url(pet, format: :json)
end
