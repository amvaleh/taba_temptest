require "administrate/base_dashboard"

class ProfileDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    gardens: Field::HasMany,
    id: Field::Number,
    profile_photo: CarrierwaveField,
    cover_photo: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    first_name: Field::String,
    last_name: Field::String,
    full_name: Field::String,
    gender: Field::Number,
    mobile_number: Field::String,
    slug: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :gardens,
    :id,
    :profile_photo,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :gardens,
    :id,
    :cover_photo,
    :created_at,
    :updated_at,
    :first_name,
    :last_name,
    :full_name,
    :gender,
    :mobile_number,
    :slug,
    :profile_photo,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :gardens,
    :profile_photo,
    :cover_photo,
    :first_name,
    :last_name,
    :full_name,
    :gender,
    :mobile_number,
    :slug,
  ].freeze

  # Overwrite this method to customize how profiles are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(profile)
    "Profile ##{profile.full_name}"
  end
end
