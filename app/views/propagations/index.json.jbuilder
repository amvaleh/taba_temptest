json.array!(@propagations) do |propagation|
  json.extract! propagation, :id, :name, :explain
  json.url propagation_url(propagation, format: :json)
end
