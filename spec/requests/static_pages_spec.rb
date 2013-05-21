require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the content 'bookmark-app'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'bookmark-app')
    end
   #  it "should have title '@.home'" do
  	# 	visit '/static_pages/about'
  	# 	page.should have_selector('title', :text => '@.home')
  	# end
  end

  describe "Help page" do
  	it "should have the content 'F1.help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'F1.help')
  	end
  	# it "should have title 'F1.help'" do
  	# 	visit '/static_pages/about'
  	# 	page.should have_selector('title', :text => 'F1.help')
  	# end
  end

  describe "About page" do
  	it "should have content 'about.us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'about.us')
  	end
  	# it "should have title 'about.us'" do
  	# 	visit '/static_pages/about'
  	# 	page.should have_selector('title', :text => 'about.us')
  	# end
  end

  describe "Contact page" do
  	it "should have content 'szymon.blaszczynski@gmail.com'" do
  		visit '/static_pages/contact'
  		page.should have_content('szymon.blaszczynski@gmail.com')
  	end
  end

end
