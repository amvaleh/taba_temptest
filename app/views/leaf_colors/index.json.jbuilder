json.array!(@leaf_colors) do |leaf_color|
  json.extract! leaf_color, :id, :name, :avatar
  json.url leaf_color_url(leaf_color, format: :json)
end
