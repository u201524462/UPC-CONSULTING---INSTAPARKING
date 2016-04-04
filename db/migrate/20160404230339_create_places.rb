class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.text :name
      t.references :districts, index: true, foreign_key: true
      t.text :address
      t.references :vehicle_type, index: true, foreign_key: true
      t.decimal :vehicle_type_small_price
      t.decimal :vehicle_type_medium_price
      t.decimal :vehicle_type_big_price
      t.string :extra_features_string
      t.text :flag

      t.timestamps null: false
    end
  end
end
