require 'rails_helper'

describe "adds product path" do

  it "adds a product ad admin" do
    visit root_path
    user = FactoryGirl.create(:user)
    click_on 'Products'
    fill_in 'Email', :with => 'nick@gmail.com'
    fill_in 'Password', :with => 'qqqqqq'
    click_on 'Log in'
    click_on 'Products'
    click_on 'Add Product'
    expect(page).to have_content "Description"
  end

  it "adds a product ad admin" do
    visit root_path
    user = FactoryGirl.create(:user)
    click_on 'Products'
    fill_in 'Email', :with => 'nick@gmail.com'
    fill_in 'Password', :with => 'qqqqqq'
    click_on 'Log in'
    click_on 'Products'
    click_on 'Add Product'
    fill_in 'Title', :with => 'Lobster'
    fill_in 'Image', :with => 'crab.jpg'
    fill_in 'Description', :with => 'Lobster fresh from the atlantic.'
    fill_in 'Price', :with => '50'
    click_on 'Create Product'
    expect(page).to have_content "Product successfully added!"
  end

end
