require 'spec_helper'

describe "UserPages" do
	subject {page}
  describe "sign.up page" do
  	before {visit signup_path}
    it { should have_selector('h1', text: 'sign.up') }
  end
end