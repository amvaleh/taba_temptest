json.array!(@plant_nutritions) do |plant_nutrition|
  json.extract! plant_nutrition, :id, :nutrition_id, :plant_id, :time_space, :time
  json.url plant_nutrition_url(plant_nutrition, format: :json)
end
