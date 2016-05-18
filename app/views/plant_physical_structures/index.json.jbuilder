json.array!(@plant_physical_structures) do |plant_physical_structure|
  json.extract! plant_physical_structure, :id, :plant_id, :physical_structure_id
  json.url plant_physical_structure_url(plant_physical_structure, format: :json)
end
