module StaticPagesHelper
  def gravatar_url(var)
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(var)}?s=150?d=monsterid"
  end

  def main_menu 
    content_tag :ul do
      content_tag(:li, (link_to 'Home', home_path))+
      content_tag(:li, (link_to 'About', about_path))+
      content_tag(:li, (link_to 'Who we are', who_we_are_path))
    end
  end
end
