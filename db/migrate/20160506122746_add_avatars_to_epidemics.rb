class AddAvatarsToEpidemics < ActiveRecord::Migration
  def change
    add_column :epidemics, :avatars, :json
  end
end
