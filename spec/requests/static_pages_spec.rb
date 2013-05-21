require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content bookmark-app" do
      visit '/static_pages/home'
      page.should have_content('bookmark-app')
    end
  end
end
