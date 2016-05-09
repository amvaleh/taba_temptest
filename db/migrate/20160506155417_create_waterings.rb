class CreateWaterings < ActiveRecord::Migration
  def change
    create_table :waterings do |t|
      t.integer :plant_id
      t.integer :season_id
      t.integer :times
      t.string :time_space

      t.timestamps null: false
    end
  end
end
