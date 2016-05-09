class CreatePlantPropagations < ActiveRecord::Migration
  def change
    create_table :plant_propagations do |t|
      t.integer :plant_id
      t.integer :propagation_id

      t.timestamps null: false
    end
  end
end
