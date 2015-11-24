json.array!(@signups) do |signup|
  json.extract! signup, :id, :name, :size, :guest1, :size1, :guest2, :size2, :guest3, :size3, :guest4, :size4
  json.url signup_url(signup, format: :json)
end
