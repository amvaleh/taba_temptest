json.array!(@medical_features) do |medical_feature|
  json.extract! medical_feature, :id, :name, :description
  json.url medical_feature_url(medical_feature, format: :json)
end
