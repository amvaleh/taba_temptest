json.array!(@leaf_shapes) do |leaf_shape|
  json.extract! leaf_shape, :id, :name, :avatar
  json.url leaf_shape_url(leaf_shape, format: :json)
end
