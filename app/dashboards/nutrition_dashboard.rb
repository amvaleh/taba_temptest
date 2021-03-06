require "administrate/base_dashboard"

class NutritionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    plant_nutritions: Field::HasMany,
    plants: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    explain: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    avatars: Field::Text,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :plant_nutritions,
    :plants,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :plant_nutritions,
    :plants,
    :id,
    :name,
    :explain,
    :created_at,
    :updated_at,
    :avatars,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :plant_nutritions,
    :plants,
    :name,
    :explain,
    :avatars,
  ].freeze

  # Overwrite this method to customize how nutritions are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(nutrition)
    "Nutrition ##{nutrition.name}"
  end
end
