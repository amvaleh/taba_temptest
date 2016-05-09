class AddAvatarsToEpidemics < ActiveRecord::Migration
  def change
    add_column :epidemics, :avatars, :text
  end
end
