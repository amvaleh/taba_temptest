class AddAvatarsToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :avatars, :json
  end
end
