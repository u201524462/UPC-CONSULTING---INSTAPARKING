class CreateAutomovils < ActiveRecord::Migration
  def change
    create_table :automovils do |t|
      t.string :Placa_auto
      t.string :Marca_auto
      t.string :Modelo_auto
      t.string :Color_auto
      t.date :Fecha_Registro_auto

      t.timestamps null: false
    end
  end
end
