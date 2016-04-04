json.array!(@places) do |place|
  json.extract! place, :id, :name, :districts_id, :address, :vehicle_type_id, :vehicle_type_small_price, :vehicle_type_medium_price, :vehicle_type_big_price, :extra_features_string, :flag
  json.url place_url(place, format: :json)
end
