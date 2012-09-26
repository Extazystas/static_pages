describe "StaticPages" do
 
  describe "Who we are page" do
    it "should have correct title" do
      visit who_we_are_path
      page.should have_selector('title', text: 'Knyazev Static: Who We Are')
    end
 
    it "should have about content" do
      visit who_we_are_path
      page.should have_content('Who We Are')
    end
  end
end