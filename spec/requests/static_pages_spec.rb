require 'spec_helper'

  describe "Static pages" do

    subject { page }

    describe "Home page" do
      before { visit root_path }
      it { should have_selector('h1', text: 'bookmark') }
#it { should have_selector('title', text: full_title('')) }
#it { should_not have_selector('title', text: '| Home') }
    end

    describe "Help page" do
      before { visit help_path }
      it { should have_selector('h1', text: 'F1.help') }
#it { should have_selector('title', text: full_title('F1.help')) }
    end

    describe "About page" do
      before { visit about_path }
      it { should have_selector('h1', text: 'about.us') }
#it { should have_selector('title', text: full_title('about.us')) }
    end

    describe "Contact page" do
      before { visit contact_path }
      it { should have_selector('h1', text: 'Walked Out team') }
#it { should have_selector('title', text: full_title('contact')) }
    end
    
  end
#let(:base_title) { "Ruby on Rails Tutorial Sample App" }