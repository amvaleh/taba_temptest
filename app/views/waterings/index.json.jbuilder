json.array!(@waterings) do |watering|
  json.extract! watering, :id, :plant_id, :season_id, :times, :time_space
  json.url watering_url(watering, format: :json)
end
