require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    # it "should have 'host.bookmarks'" do
    #   visit root_path
    #   page.should have_content('host.bookmarks')
    # end
   #  it "should have title '@.home'" do
  	# 	visit '/static_pages/about'
  	# 	page.should have_selector('title', :text => '@.home')
  	# end
  end

  describe "Help page" do
  	it "should have h1 'F1.help'" do
  		visit help_path
  		page.should have_selector('h1', text: 'F1.help')
  	end
  	# it "should have title 'F1.help'" do
  	# 	visit '/static_pages/about'
  	# 	page.should have_selector('title', :text => 'F1.help')
  	# end
  end

  describe "About page" do
  	it "should have h1 'about.us'" do
  		visit about_path
  		page.should have_selector('h1', text: 'about.us')
  	end
  	# it "should have title 'about.us'" do
  	# 	visit '/static_pages/about'
  	# 	page.should have_selector('title', :text => 'about.us')
  	# end
  end

  describe "Contact page" do
  	it "should have content 'szymon.blaszczynski@gmail.com'" do
  		visit contact_path
  		page.should have_content('szymon.blaszczynski@gmail.com')
  	end
  end

end
