require 'spec_helper'

describe "email_lists/edit" do
  before(:each) do
    @email_list = assign(:email_list, stub_model(EmailList,
      :mail => "MyString"
    ))
  end

  it "renders the edit email_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => email_lists_path(@email_list), :method => "post" do
      assert_select "input#email_list_mail", :name => "email_list[mail]"
    end
  end
end
