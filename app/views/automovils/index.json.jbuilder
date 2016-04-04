json.array!(@automovils) do |automovil|
  json.extract! automovil, :id, :Placa_auto, :Marca_auto, :Modelo_auto, :Color_auto, :Fecha_Registro_auto
  json.url automovil_url(automovil, format: :json)
end
