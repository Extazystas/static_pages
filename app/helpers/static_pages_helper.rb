module StaticPagesHelper
  def gravatar_url(var)
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(var)}?d=monsterid"
  end
end
