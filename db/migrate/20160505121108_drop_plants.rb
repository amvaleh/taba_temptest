class DropPlants < ActiveRecord::Migration
  def change
    drop_table :planters
  end
end
