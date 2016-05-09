class PlantNutrition < ActiveRecord::Base

    belongs_to :plant
    belongs_to :nutrition
    belongs_to :season

end
