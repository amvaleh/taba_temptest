json.array!(@plant_bloom_colors) do |plant_bloom_color|
  json.extract! plant_bloom_color, :id, :plant_id, :bloom_color_id
  json.url plant_bloom_color_url(plant_bloom_color, format: :json)
end
