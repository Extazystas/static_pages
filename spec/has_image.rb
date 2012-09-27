  module Capybara
  class Session
    def has_image?
      has_xpath?("//img[contains(@src,\"www.gravatar.com\")]")
    end
  end
end