json.array!(@users) do |user|
  json.extract! user, :name, :name, :email, :profile_picture
  json.url user_url(user, format: :json)
end
