json.array!(@pests) do |pest|
  json.extract! pest, :id, :name, :cause, :treatment, :avatars
  json.url pest_url(pest, format: :json)
end
