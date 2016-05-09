class RemoveBloomseasonPlant < ActiveRecord::Migration
  def change
    remove_column :plants, :bloom_season, :string
  end
end
