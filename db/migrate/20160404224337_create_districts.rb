class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.text :name
      t.text :description
      t.text :flag

      t.timestamps null: false
    end
  end
end
