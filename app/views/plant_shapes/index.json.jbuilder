json.array!(@plant_shapes) do |plant_shape|
  json.extract! plant_shape, :id, :plant_id, :leaf_shape_id, :leaf_color_id, :bloom_shape_id, :bloom_color_id
  json.url plant_shape_url(plant_shape, format: :json)
end
