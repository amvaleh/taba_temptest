class DropBloomShapes < ActiveRecord::Migration
  def change
    drop_table :bloom_shapes
  end
end
