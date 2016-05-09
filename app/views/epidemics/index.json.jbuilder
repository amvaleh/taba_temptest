json.array!(@epidemics) do |epidemic|
  json.extract! epidemic, :id, :sign, :cause
  json.url epidemic_url(epidemic, format: :json)
end
