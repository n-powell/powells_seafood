require 'rails_helper'

describe "adds review path" do


  it "adds a review as admin" do
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
    click_on 'Lobster'
    fill_in 'Comment', :with => 'Fantastic price point.'
    click_on 'Create Review'
    expect(page).to have_content "Review successfully added!"
  end

end
