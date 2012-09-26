require 'spec_helper'

describe "StaticPages" do
  
  describe 'Home page' do
    it 'have correct title' do
      visit '/static_pages/home'
      page.should have_selector('title', text: 'Knyazev Static: Homepage')
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
  end

end
