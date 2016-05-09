json.array!(@plant_soils) do |plant_soil|
  json.extract! plant_soil, :id
  json.url plant_soil_url(plant_soil, format: :json)
end
