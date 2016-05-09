json.array!(@bloom_colors) do |bloom_color|
  json.extract! bloom_color, :id, :name, :avatar
  json.url bloom_color_url(bloom_color, format: :json)
end
