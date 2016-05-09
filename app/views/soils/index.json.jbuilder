json.array!(@soils) do |soil|
  json.extract! soil, :id, :name, :explain, :avatar
  json.url soil_url(soil, format: :json)
end
