require 'spec_helper'


describe "ApplicationHelper" do
  describe "#gravatar_url" do
    it "has correct return value" do
      expect(helper.gravatar_url("1@2.ru"))
      .to have_selector('img', src: /http:\/\/www.gravatar.com\/avatar\/[a-z0-9]+\?d=wavatar&s=150/)

    end
  end

  describe "#gravatar_name" do
    it "has correct return value" do
      expect(helper.gravatar_name("same@mail.ru")) ==  "same"

    end
  end
end


 
