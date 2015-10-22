require 'rails_helper'

describe "user registration" do
  it "allows new users to register with an email address and password" do
    visit "/users/sign_up"

    fill_in "Email",                 :with => "test@singup.com"
    fill_in "Password",              :with => "testsignup"
    fill_in "Password confirmation", :with => "testsignup"

    click_button "Sign up"

    page.should have_content("Welcome! You have signed up successfully.")
  end
end
