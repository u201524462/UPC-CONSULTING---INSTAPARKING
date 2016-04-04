class CreateVehicleTypes < ActiveRecord::Migration
  def change
    create_table :vehicle_types do |t|
      t.text :short_description
      t.text :long_description
      t.text :flag1
      t.text :flag2

      t.timestamps null: false
    end
  end
end
