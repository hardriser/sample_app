require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  it "should have the right title" do
	  visit '/static+pages/home'
	  expect(page).to have_title("Ruby on Rails Sample App | Home")
  end
  end

  describe "Help page" do
	  it "should have the content 'Help'" do
		  visit '/static_pages/help'
		  expect(page).to have_content('Help')
	  end
  it "should have the right title" do
	visit '/static+pages/home'
		expect(page).to have_title("Ruby on Rails Sample App | Home")
	end
  end
  describe "Contact page" do
	  it "should have the content 'Content'" do
		  visit '/static_pages/contact'
		  expect(page).to have_content('Contact')
	  it "should have the content 'Content'" do
		  visit '/static_page/contact'
		  expect(page).to have_title("Ruby on Rails Sample App | Contact")
	  end
  end
end
