require "administrate/field/base"
include ApplicationHelper
class CarrierwaveField < Administrate::Field::Base

  def url
    data.url
  end

  def thumbnail
    data.url(:thumbnail)
  end

  def to_s
    data
  end

end
