json.array!(@seasons) do |season|
  json.extract! season, :id, :name, :number, :start, :end
  json.url season_url(season, format: :json)
end
