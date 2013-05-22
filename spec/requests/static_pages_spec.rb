require 'spec_helper'

  describe "Static pages" do

    subject { page }

    shared_examples_for "all static pages" do
      it { should have_selector('h1', text: heading) }
      #it { should have_selector { 'title', text: full_title(page_title)) }
    end

    it "should have the right links on the layout" do
      visit root_path
      click_link "home"
      should have_selector 'h1', text: "host.bookmarks"
      click_link "bookmark-app"
      should have_selector 'h1', text: "host.bookmarks"
      click_link "contact"
      should have_selector 'h1', text: "Whales team"
      click_link "help"
      should have_selector 'h1', text: "help"
      # click_on "signup_button"
      # should have_selector 'h1', text: "sign.up"
      
    end

    describe "Home page" do
      before { visit root_path }
      let(:heading) {'host.bookmarks'}
      #let(:page_title) {''}
      it_should_behave_like "all static pages"
    end

    describe "Help page" do
      before { visit help_path }
      let(:heading) {'help'}
      #let(:page_title) {''}
      it_should_behave_like "all static pages"
    end

    describe "Contact page" do
      before { visit contact_path }
      let(:heading) {'Whales team'}
      #let(:page_title) {''}
      it_should_behave_like "all static pages"
    end
    
  end