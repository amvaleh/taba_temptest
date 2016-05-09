class CreatePlantPests < ActiveRecord::Migration
  def change
    create_table :plant_pests do |t|
      t.integer :plant_id
      t.integer :pest_id

      t.timestamps null: false
    end
  end
end
