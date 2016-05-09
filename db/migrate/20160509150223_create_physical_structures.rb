class CreatePhysicalStructures < ActiveRecord::Migration
  def change
    create_table :physical_structures do |t|
      t.string :name
      t.string :avatar

      t.timestamps null: false
    end
  end
end
