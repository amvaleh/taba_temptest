require "administrate/base_dashboard"

class LeafShapeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    plant_leaf_shapes: Field::HasMany,
    plants: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    avatar: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :plant_leaf_shapes,
    :plants,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :plant_leaf_shapes,
    :plants,
    :id,
    :name,
    :avatar,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :plant_leaf_shapes,
    :plants,
    :name,
    :avatar,
  ].freeze

  # Overwrite this method to customize how leaf shapes are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(leaf_shape)
    "LeafShape ##{leaf_shape.name}"
  end
end
