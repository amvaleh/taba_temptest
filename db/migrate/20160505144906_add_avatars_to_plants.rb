class AddAvatarsToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :avatars, :text
  end
end
