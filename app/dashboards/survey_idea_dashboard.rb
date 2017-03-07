require "administrate/base_dashboard"

class SurveyIdeaDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    gender: Field::String,
    age: Field::Number,
    idea1: Field::Number,
    idea2: Field::Number,
    idea3: Field::Number,
    idea4: Field::Number,
    idea5: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    phone_number: Field::String,
    email: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :gender,
    :age,
    :idea1,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :gender,
    :age,
    :idea1,
    :idea2,
    :idea3,
    :idea4,
    :idea5,
    :created_at,
    :updated_at,
    :phone_number,
    :email,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :gender,
    :age,
    :idea1,
    :idea2,
    :idea3,
    :idea4,
    :idea5,
    :phone_number,
    :email,
  ].freeze

  # Overwrite this method to customize how survey ideas are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(survey_idea)
    "SurveyIdea ##{survey_idea.name}"
  end
end
