class AddSlugToPlanters < ActiveRecord::Migration
  def change
    add_column :planters, :slug, :string
    add_index :planters, :slug, unique: true
  end
end
