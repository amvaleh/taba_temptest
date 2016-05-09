json.array!(@plant_pests) do |plant_pest|
  json.extract! plant_pest, :id, :plant_id, :pest_id
  json.url plant_pest_url(plant_pest, format: :json)
end
