json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :districts_id, :vehicle_type_id, :places_id, :start_date, :end_date, :start_time, :end_time, :price, :flag
  json.url reservation_url(reservation, format: :json)
end
