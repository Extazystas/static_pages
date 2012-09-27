require 'spec_helper'
require 'has_image'

describe "StaticPages" do
  
  describe 'Home page' do
    before(:each) { visit home_path }

    it 'have correct title' do
      page.should have_selector('title', text: 'Knyazev Static: Homepage')
    end

    it 'should have welcome content' do 
      page.should have_content('RubyGardens')
    end

    it "should have link to about page" do
      click_link 'About'
      current_path.should == '/about'
    end
  end

  describe 'About page' do
    before(:each) { visit about_path }

    it 'should have welcome content' do 
      page.should have_content('RubyGardens')
    end

    it 'should have correct title' do 
      page.should have_selector('title', text: 'Knyazev Static: About page')
    end

    it "should have link to home page" do
      click_link 'Home'
      current_path.should == '/'
    end

  end

  describe "Who we are page" do
    before(:each) { visit who_we_are_path }


    it "should have correct title" do
      page.should have_selector('title', text: 'Knyazev Static: Who We Are')
    end
 
    it "should have about content" do
      page.should have_content('RubyGardens faces')
    end

    #TODO
    xit "should have a avatar images" do
      # page.should have_image(/http:\/\/www.gravatar.com/)
      page.should have_image 

    end
  end

end
