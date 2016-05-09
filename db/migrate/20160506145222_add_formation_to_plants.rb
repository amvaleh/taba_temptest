class AddFormationToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :leaf_shape_id, :integer
    add_column :plants, :leaf_color_id, :integer
    add_column :plants, :bloom_shape_id, :integer
    add_column :plants, :bloom_color_id, :integer
  end
end
