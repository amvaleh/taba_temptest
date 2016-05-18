json.array!(@plant_leaf_shapes) do |plant_leaf_shape|
  json.extract! plant_leaf_shape, :id, :plant_id, :leaf_shape_id
  json.url plant_leaf_shape_url(plant_leaf_shape, format: :json)
end
