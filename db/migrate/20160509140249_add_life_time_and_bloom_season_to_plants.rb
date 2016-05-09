class AddLifeTimeAndBloomSeasonToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :life_time, :string
    add_column :plants, :bloom_season, :string
  end
end
