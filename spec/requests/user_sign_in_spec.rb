require "spec_helper"
describe "user sign in" do
  before :each do
    @user = User.create(:email    => "test@signin.com",
                       :password => "testsignin")

    visit "/users/sign_in"

    fill_in "Email",    :with => "test@signin.com"
    fill_in "Password", :with => "testsignin"
    click_button "Log in"

  end
  it "allows users to sign in after they have registered" do
    page.should have_content("Signed in successfully.")
  end

end
