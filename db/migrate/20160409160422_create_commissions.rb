class CreateCommissions < ActiveRecord::Migration
  def change
    create_table :commissions do |t|
      t.string :com_type
      t.references :vehicle_type, index: true, foreign_key: true
      t.references :district, index: true, foreign_key: true
      t.string :flag

      t.timestamps null: false
    end
  end
end
