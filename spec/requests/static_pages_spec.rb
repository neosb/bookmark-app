require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'bookmark-app'" do
      visit '/static_pages/home'
      page.should have_content('bookmark-app')
    end
  end

  describe "Help page" do
  	it "should have the content 'F1.help'" do
  		visit '/static_pages/help'
  		page.should have_content('F1.help')
  	end
  end

  describe "About page" do
  	it "should have content 'about.us'" do
  		visit '/static_pages/about'
  		page.should have_content('about.us')
  	end
  end
  
end
