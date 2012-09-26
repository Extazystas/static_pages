require 'spec_helper'


describe "EmailLists" do


  describe "GET /email_lists" do

    it "is ready" do
      get email_lists_path
      response.status.should be(401)
    end

    
  end

  
end
