module StaticPagesHelper
  def gravatar_url(var)
    image_tag(("http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(var)}?d=monsterid&s=150"), :class => "img-polaroid")
    
  end
  
  def gravatar_name(var)
    take_name = var.match(/\A((?:[a-zA-Z0-9.]+))/)
  end

  def main_menu(cl)
    content_tag :ul, :class => cl do
      content_tag(:li, (link_to 'Home', home_path))+
      content_tag(:li, (link_to 'About', about_path))+
      content_tag(:li, (link_to 'Who we are', who_we_are_path))+
      content_tag(:li, (link_to 'Admin', email_lists_path))
    end
  end
end
