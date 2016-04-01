class CreateEstacionamientos < ActiveRecord::Migration
  def change
    create_table :estacionamientos do |t|
      t.string :Direccion_esta
      t.string :Departamento_esta
      t.integer :Disponibilidad_esta
      t.integer :Codigo_esta
      t.integer :Tipo_esta
      t.string :Tipo_alquiler_esta
      t.integer :Tarifa_esta
      t.string :Otras_caracteristicas

      t.timestamps null: false
    end
  end
end
