module ApplicationHelper

	def can_edit
		@profile.user == current_user
	end

	def has_auth(comment)
		current_user == comment.user
	end

  def has_auth_post(post)
    current_user.id == post.user_id
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
	
  def nested_product_category_spacing_adjusted_for_depth(category, relative_depth)
    depth = category.depth - relative_depth
    spacing = depth < 2 ? 0.8 : 1.5
    (""*category.depth).html_safe
  end

  def nested_product_category_rows(category, current_category = nil, link_to_current = true, relative_depth = 0)
    if category.present? && category.children.count > 0
      String.new.tap do |s|
        category.children.ordered.each do |child|
          s << "<div class='cat_item'> <br>"
          if child == current_category
            if link_to_current == false
              s << "#{nested_product_category_spacing_adjusted_for_depth child, relative_depth} #{child.name} (#{t('shoppe.product_category.nesting.current_category')})"
            else
              s << "#{nested_product_category_spacing_adjusted_for_depth child, relative_depth} #{link_to(child.name, products_path(child.permalink)).html_safe} #{ image_tag child.image.path if child.image.present?  } (#{t('shoppe.product_category.nesting.current_category')})"
            end
          else
            s << "#{nested_product_category_spacing_adjusted_for_depth child, relative_depth} #{link_to(child.name, products_path(child.permalink)).html_safe} #{image_tag child.image.path if child.image.present?  } "
          end
          s << "</div>"
          s << nested_product_category_rows(child, current_category, link_to_current, relative_depth)
        end
      end.html_safe
    else
      ""
    end
  end

  def active_nav_item(item)
    @active_nav_item = item
  end
  
  def link_to(name, options = nil, html_options = nil, &block)
    if html_options && @active_nav_item && @active_nav_item == html_options[:nav_item] 
      html_options[:class] = 'active'
    end
    super
  end
  
  def markdown(text)
    return '' if text.blank?
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
    markdown.render(text).html_safe
  end
  
  def next_delivery_cutoff
    fourpm = Time.now.change(:hour => 16, :minute => 0)
    fourpm = (fourpm + 1.day).change(:hour => 16, :minute => 0) if fourpm < Time.now
    fourpm = (fourpm + 1.day).change(:hour => 16, :minute => 0) if fourpm.sunday?
    fourpm = (fourpm + 2.day).change(:hour => 16, :minute => 0) if fourpm.saturday?
    fourpm
  end
  
  def time_until_next_delivery_cut_off
    minutes = (next_delivery_cutoff - Time.now) / 60
    whole_hours = (minutes / 60).floor
    remaining_minutes = (minutes - (whole_hours * 60)).to_i
    Array.new.tap do |a|
      a << pluralize(whole_hours, 'hour') if whole_hours > 0
      a << pluralize(remaining_minutes, 'minute') if remaining_minutes > 0
    end.to_sentence
  end

  def hour_until_next_delivery
    minutes = (next_delivery_cutoff - Time.now) / 60
    whole_hours = (minutes / 60).floor
    return whole_hours
  end

  def minute_until_next_delivery
    minutes = (next_delivery_cutoff - Time.now) / 60
    whole_hours = (minutes / 60).floor
    remaining_minutes = (minutes - (whole_hours * 60)).to_i
    return remaining_minutes
  end
  
  def next_delivery_day
    date = next_delivery_cutoff.to_date + 1.day
    case date
    when Date.tomorrow
      "tomorrow"
    else
      "on " + date.strftime("%A")
    end
  end





  def nice_nested_product_category_rows(category, current_category = nil, link_to_current = true, relative_depth = 0)
    if category.present? && category.children.count > 0
      String.new.tap do |s|
        category.children.order('created_at DESC').each do |child|
          if child == current_category
            if link_to_current == false
              s << "<li class='item' >#{nested_product_category_spacing_adjusted_for_depth child, relative_depth}#{child.name} (#{t('shoppe.product_category.nesting.current_category')})</li>"
            else
              s << "<li class='item'>#{nested_product_category_spacing_adjusted_for_depth child, relative_depth}#{link_to("(#{count_children(child)})"+child.name, products_path(child.permalink)).html_safe}(#{t('shoppe.product_category.nesting.current_category')})</li>"
            end
          else
            s << "<li class='item'>#{nested_product_category_spacing_adjusted_for_depth child, relative_depth}#{link_to("(#{count_children(child)})"+child.name, products_path(child.permalink)).html_safe}</li>"
          end
          s << nice_nested_product_category_rows(child, current_category, link_to_current, relative_depth)
          # s << "</div>"
        end
      end.html_safe
    else
      ""
    end
  end



  def count_children(cat)
    cat.products.includes(:default_image, :product_categories, :variants).active.count
  end


end
