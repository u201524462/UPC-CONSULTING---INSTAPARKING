json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :Codigo_Usuario, :Nickname, :Password, :Nombres_usuario, :Apellidos_usuario, :Correo_usuario, :Telefono_usuario, :Estado_usuario, :Tipo_usuario, :Fecha_Creacion_usuario, :Fecha_Actualizacion_usuario
  json.url usuario_url(usuario, format: :json)
end
