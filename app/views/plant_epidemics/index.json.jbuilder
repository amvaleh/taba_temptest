json.array!(@plant_epidemics) do |plant_epidemic|
  json.extract! plant_epidemic, :id, :plant_id, :epidemic_id
  json.url plant_epidemic_url(plant_epidemic, format: :json)
end
