class AddSeasonIdToPlantNutrition < ActiveRecord::Migration
  def change
    add_column :plant_nutritions, :season_in, :integer
  end
end
