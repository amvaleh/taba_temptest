json.array!(@bloom_seasons) do |bloom_season|
  json.extract! bloom_season, :id, :name, :plant_id, :number
  json.url bloom_season_url(bloom_season, format: :json)
end
