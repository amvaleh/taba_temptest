class AddSlugToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :slug, :string
    add_index :plants, :slug, unique: true
  end
end
