require 'spec_helper'

describe "email_lists/show" do
  before(:each) do
    @email_list = assign(:email_list, stub_model(EmailList,
      :mail => "Mail"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mail/)
  end
end
