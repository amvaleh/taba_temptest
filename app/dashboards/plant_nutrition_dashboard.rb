require "administrate/base_dashboard"

class PlantNutritionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    plant: Field::BelongsTo,
    nutrition: Field::BelongsTo,
    season: Field::BelongsTo,
    id: Field::Number,
    time_space: Field::String,
    time: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :plant,
    :nutrition,
    :season,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :plant,
    :nutrition,
    :season,
    :id,
    :time_space,
    :time,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :plant,
    :nutrition,
    :season,
    :time_space,
    :time,
  ].freeze

  # Overwrite this method to customize how plant nutritions are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(plant_nutrition)
    "PlantNutrition ##{plant_nutrition.name}"
  end
end
