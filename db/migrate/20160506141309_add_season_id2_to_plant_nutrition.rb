class AddSeasonId2ToPlantNutrition < ActiveRecord::Migration
  def change
    remove_column :plant_nutritions, :season_in, :integer
    add_column :plant_nutritions, :season_id, :integer
  end
end
