json.array!(@estacionamientos) do |estacionamiento|
  json.extract! estacionamiento, :id, :Direccion_esta, :Departamento_esta, :Disponibilidad_esta, :Codigo_esta, :Tipo_esta, :Tipo_alquiler_esta, :Tarifa_esta, :Otras_caracteristicas
  json.url estacionamiento_url(estacionamiento, format: :json)
end
