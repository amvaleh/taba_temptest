require "administrate/base_dashboard"

class PlantDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    followings: Field::HasMany.with_options(class_name: "Follow"),
    comments: Field::HasMany,
    posts: Field::HasMany,
    plant_soils: Field::HasMany,
    soils: Field::HasMany,
    plant_nutritions: Field::HasMany,
    nutritions: Field::HasMany,
    plant_propagations: Field::HasMany,
    propagations: Field::HasMany,
    plant_epidemics: Field::HasMany,
    epidemics: Field::HasMany,
    plant_pests: Field::HasMany,
    pests: Field::HasMany,
    plant_medical_features: Field::HasMany,
    medical_features: Field::HasMany,
    plant_leaf_shapes: Field::HasMany,
    leaf_shapes: Field::HasMany,
    plant_leaf_colors: Field::HasMany,
    leaf_colors: Field::HasMany,
    plant_bloom_colors: Field::HasMany,
    bloom_colors: Field::HasMany,
    plant_physical_structures: Field::HasMany,
    physical_structures: Field::HasMany,
    bloom_seasons: Field::HasMany,
    waterings: Field::HasMany,
    id: Field::Number,
    farsi_name: Field::String,
    latin_name: Field::String,
    scientific_name: Field::String,
    family: Field::String,
    hardness: Field::Number,
    geo_origin: Field::String,
    min_height: Field::Number,
    max_height: Field::Number,
    min_light: Field::Number,
    max_light: Field::Number,
    min_temp: Field::Number,
    max_temp: Field::Number,
    min_moisture: Field::Number,
    max_moisture: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    slug: Field::String,
    life_time: Field::String,
    avatars: CarrierwaveField,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :followings,
    :comments,
    :posts,
    :plant_soils,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :followings,
    :comments,
    :posts,
    :plant_soils,
    :soils,
    :plant_nutritions,
    :nutritions,
    :plant_propagations,
    :propagations,
    :plant_epidemics,
    :epidemics,
    :plant_pests,
    :pests,
    :plant_medical_features,
    :medical_features,
    :plant_leaf_shapes,
    :leaf_shapes,
    :plant_leaf_colors,
    :leaf_colors,
    :plant_bloom_colors,
    :bloom_colors,
    :plant_physical_structures,
    :physical_structures,
    :bloom_seasons,
    :waterings,
    :id,
    :farsi_name,
    :latin_name,
    :scientific_name,
    :family,
    :hardness,
    :geo_origin,
    :min_height,
    :max_height,
    :min_light,
    :max_light,
    :min_temp,
    :max_temp,
    :min_moisture,
    :max_moisture,
    :created_at,
    :updated_at,
    :slug,
    :life_time,
    :avatars,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :followings,
    :comments,
    :posts,
    :plant_soils,
    :soils,
    :plant_nutritions,
    :nutritions,
    :plant_propagations,
    :propagations,
    :plant_epidemics,
    :epidemics,
    :plant_pests,
    :pests,
    :plant_medical_features,
    :medical_features,
    :plant_leaf_shapes,
    :leaf_shapes,
    :plant_leaf_colors,
    :leaf_colors,
    :plant_bloom_colors,
    :bloom_colors,
    :plant_physical_structures,
    :physical_structures,
    :bloom_seasons,
    :waterings,
    :farsi_name,
    :latin_name,
    :scientific_name,
    :family,
    :hardness,
    :geo_origin,
    :min_height,
    :max_height,
    :min_light,
    :max_light,
    :min_temp,
    :max_temp,
    :min_moisture,
    :max_moisture,
    :avatars,
    :slug,
    :life_time,
  ].freeze

  # Overwrite this method to customize how plants are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(plant)
    "Plant ##{plant.farsi_name}"
  end
end
