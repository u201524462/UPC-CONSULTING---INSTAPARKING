class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name
      t.string :description
      t.string :flag

      t.timestamps null: false
    end
  end
end
