class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :districts, index: true, foreign_key: true
      t.references :vehicle_type, index: true, foreign_key: true
      t.references :places, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.decimal :price
      t.text :flag

      t.timestamps null: false
    end
  end
end
