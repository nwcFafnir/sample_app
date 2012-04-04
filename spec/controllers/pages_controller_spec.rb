require 'spec_helper'

describe PagesController do
  render_views

	before(:each) do
   	
	@base_title = "Ruby on Rails Tutorial Sample App | "
 	 end

  describe "GET 'Home'" do
    it "should be successful" do
      get 'Home'
      response.should be_success
    end

	it "should have the right title" do
		get 'Home'
		response.should have_selector("title",
			:content => @base_title + "Home")
	end	
  end

  describe "GET 'Contact'" do
    it "should be successful" do
      get 'Contact'
      response.should be_success
    end

	it "should have the right title" do
		get 'Contact'
		response.should have_selector("title",
			:content => @base_title + "Contact")
	end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

	it "should have the right title" do
		get 'about'
		response.should have_selector("title",
			:content => @base_title +  "about")
	end
  end

	describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end

	it "should have the right title" do
		get 'help'
		response.should have_selector("title",
			:content => @base_title +  "help")
	end
  end
end

