class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :Codigo_Usuario
      t.string :Nickname
      t.string :Password
      t.string :Nombres_usuario
      t.string :Apellidos_usuario
      t.string :Correo_usuario
      t.string :Telefono_usuario
      t.integer :Estado_usuario
      t.integer :Tipo_usuario
      t.date :Fecha_Creacion_usuario
      t.date :Fecha_Actualizacion_usuario

      t.timestamps null: false
    end
  end
end
