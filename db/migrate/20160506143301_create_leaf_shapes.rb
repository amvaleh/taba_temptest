class CreateLeafShapes < ActiveRecord::Migration
  def change
    create_table :leaf_shapes do |t|
      t.string :name
      t.string :avatar

      t.timestamps null: false
    end
  end
end
