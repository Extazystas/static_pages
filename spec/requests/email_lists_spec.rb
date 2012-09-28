require 'spec_helper'


describe "EmailLists" do


  describe "GET /email_lists" do
    it 'auth processed' do
      get email_lists_path
      if page.driver.respond_to?(:basic_auth)
        page.driver.basic_auth('admin', 'password')
         response.status.should be(200)
      elsif page.driver.respond_to?(:basic_authorize)
        page.driver.basic_authorize('admin', 'password')
         response.status.should be(200)
      elsif page.driver.respond_to?(:browser) && page.driver.browser.respond_to?(:basic_authorize)
        page.driver.browser.basic_authorize('admin', 'password')
      else
        raise "I don't know how to log in!"
        response.status.should be(401)
      end
    end


    it "is blocked" do
      get email_lists_path
      response.status.should be(401)
    end

    
  end

  
end
