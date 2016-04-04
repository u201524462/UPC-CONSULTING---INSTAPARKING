json.array!(@commissions) do |commission|
  json.extract! commission, :id, :type, :vehicle_type_id, :districts_id, :flag
  json.url commission_url(commission, format: :json)
end
