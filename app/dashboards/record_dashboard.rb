require "administrate/base_dashboard"

class RecordDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    probe: Field::BelongsTo,
    id: Field::Number,
    light: Field::Number,
    tempreature: Field::Number,
    soil_moisture: Field::Number,
    battery: Field::Number,
    probe_time: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :probe,
    :id,
    :light,
    :tempreature,
    :soil_moisture,
    :battery,
    :probe_time,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :probe,
    :id,
    :light,
    :tempreature,
    :soil_moisture,
    :battery,
    :probe_time,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :probe,
    :light,
    :tempreature,
    :soil_moisture,
    :battery,
    :probe_time,
  ].freeze

  # Overwrite this method to customize how records are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(record)
  #   "Record ##{record.id}"
  # end
end
