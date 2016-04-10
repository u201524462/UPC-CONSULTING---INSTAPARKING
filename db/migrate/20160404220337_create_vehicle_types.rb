class CreateVehicleTypes < ActiveRecord::Migration
  def change
    create_table :vehicle_types do |t|
      t.string :short_description
      t.string :long_description
      t.string :flag1
      t.string :flag2

      t.timestamps null: false
    end
  end
end
