json.array!(@physical_structures) do |physical_structure|
  json.extract! physical_structure, :id, :name, :avatar
  json.url physical_structure_url(physical_structure, format: :json)
end
