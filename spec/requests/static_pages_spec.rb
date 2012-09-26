require 'spec_helper'

describe "StaticPages" do
  
  describe 'Home page' do
    it 'have correct title' do
      visit '/static_pages/home'
      page.should have_selector('title', text: 'Knyazev Static: Homepage')
    end

    it 'should have welcome content' do 
      visit '/static_pages/home'
      page.should have_content('Welcome!')
    end

    it "should have link to about page" do
      visit '/static_pages/home'
      click_link 'About'
      current_path.should == '/static_pages/about'
    end
  end

  describe 'About page' do
    it 'should have welcome content' do 
      visit '/static_pages/about'
      page.should have_content('Welcome to RubyGardens')
    end

    it 'should have correct title' do 
      visit '/static_pages/about'
      page.should have_selector('title', text: 'Knyazev Static: About page')
    end

    it "should have link to home page" do
      visit '/static_pages/about'
      click_link 'Home'
      current_path.should == '/static_pages/home'
    end

  end


end
