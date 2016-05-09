json.array!(@plants) do |plant|
  json.extract! plant, :id, :farsi_name, :latin_name, :scientific_name, :family, :hardness, :geo_origin, :min_height, :max_height, :min_light, :max_light, :min_temp, :max_temp, :min_moisture, :max_moisture
  json.url plant_url(plant, format: :json)
end
