require "administrate/base_dashboard"

class WateringDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    plant: Field::BelongsTo,
    season: Field::BelongsTo,
    id: Field::Number,
    times: Field::Number,
    time_space: Field::String,
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
    :season,
    :id,
    :times,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :plant,
    :season,
    :id,
    :times,
    :time_space,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :plant,
    :season,
    :times,
    :time_space,
  ].freeze

  # Overwrite this method to customize how waterings are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(watering)
    "Watering ##{watering.id}"
  end
end
