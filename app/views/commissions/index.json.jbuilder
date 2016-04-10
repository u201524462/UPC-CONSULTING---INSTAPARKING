json.array!(@commissions) do |commission|
  json.extract! commission, :id, :com_type, :vehicle_types_id, :district_id, :flag
  json.url commission_url(commission, format: :json)
end
