json.array!(@plant_medical_features) do |plant_medical_feature|
  json.extract! plant_medical_feature, :id, :plant_id, :medical_feature
  json.url plant_medical_feature_url(plant_medical_feature, format: :json)
end
