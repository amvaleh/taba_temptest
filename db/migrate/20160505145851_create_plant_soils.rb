class CreatePlantSoils < ActiveRecord::Migration
  def change
    create_table :plant_soils do |t|
      t.references :plant, index: true
      t.references :soil, index: true

      t.timestamps null: false
    end
    add_foreign_key :plant_soils, :plants
    add_foreign_key :plant_soils, :soils
  end
end
