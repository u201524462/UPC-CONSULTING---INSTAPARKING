json.array!(@districts) do |district|
  json.extract! district, :id, :name, :description, :flag
  json.url district_url(district, format: :json)
end
