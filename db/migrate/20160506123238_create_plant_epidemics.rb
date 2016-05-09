class CreatePlantEpidemics < ActiveRecord::Migration
  def change
    create_table :plant_epidemics do |t|
      t.integer :plant_id
      t.integer :epidemic_id

      t.timestamps null: false
    end
  end
end
