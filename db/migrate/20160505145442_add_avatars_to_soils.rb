class AddAvatarsToSoils < ActiveRecord::Migration
  def change
    add_column :soils, :avatars, :json
  end
end
