class CreatePlantNutritions < ActiveRecord::Migration
  def change
    create_table :plant_nutritions do |t|
      t.integer :nutrition_id
      t.integer :plant_id
      t.string :time_space
      t.integer :time

      t.timestamps null: false
    end
  end
end
