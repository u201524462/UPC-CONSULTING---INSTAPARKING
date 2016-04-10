class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.references :district, index: true, foreign_key: true
      t.string :address
      t.references :vehicle_type, index: true, foreign_key: true
      t.decimal :vehicle_type_small_price
      t.decimal :vehicle_type_medium_price
      t.decimal :vehicle_type_big_price
      t.string :extra_features_string
      t.string :flag

      t.timestamps null: false
    end
  end
end
