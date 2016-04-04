class CreateCommissions < ActiveRecord::Migration
  def change
    create_table :commissions do |t|
      t.text :type
      t.references :vehicle_type, index: true, foreign_key: true
      t.references :districts, index: true, foreign_key: true
      t.text :flag

      t.timestamps null: false
    end
  end
end
