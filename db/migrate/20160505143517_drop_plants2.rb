class DropPlants2 < ActiveRecord::Migration
  def change
    drop_table :plants
  end
end
