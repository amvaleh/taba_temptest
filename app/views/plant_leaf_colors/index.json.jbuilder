json.array!(@plant_leaf_colors) do |plant_leaf_color|
  json.extract! plant_leaf_color, :id, :plant_id, :leaf_color_id
  json.url plant_leaf_color_url(plant_leaf_color, format: :json)
end
