class AddAvatarsToSoils < ActiveRecord::Migration
  def change
    add_column :soils, :avatars, :text
  end
end
