json.array!(@plant_propagations) do |plant_propagation|
  json.extract! plant_propagation, :id, :plant_id, :propagation_id
  json.url plant_propagation_url(plant_propagation, format: :json)
end
