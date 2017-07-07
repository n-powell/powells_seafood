require 'rails_helper'

describe "the products test" do

  it "prompts for user to sign in to see products" do
    visit root_path
    click_on 'Products'
    expect(page).to have_content "You need to sign in or sign up before continuing."
  end

  it "logs user in" do
    visit root_path
    user = FactoryGirl.create(:user)
    click_on 'Products'
    fill_in 'Email', :with => 'nick@gmail.com'
    fill_in 'Password', :with => 'qqqqqq'
    click_on 'Log in'
    expect(page).to have_content "Signed in successfully."
  end

end
