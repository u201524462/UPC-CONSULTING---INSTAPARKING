json.array!(@vehicle_types) do |vehicle_type|
  json.extract! vehicle_type, :id, :short_description, :long_description, :flag1, :flag2
  json.url vehicle_type_url(vehicle_type, format: :json)
end
