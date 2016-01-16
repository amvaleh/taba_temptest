json.array!(@planter_galleries) do |planter_gallery|
  json.extract! planter_gallery, :id, :planter_id, :avatar
  json.url planter_gallery_url(planter_gallery, format: :json)
end
