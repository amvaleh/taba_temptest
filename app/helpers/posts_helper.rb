module PostsHelper



  def get_image(planter)
    if planter.planter_galleries.first.present?
      return planter.planter_galleries.first.avatar_url(:medium)
    else
      return path_to_image("barggologram.png",:size=>"20 x 20")
    end

  end

end