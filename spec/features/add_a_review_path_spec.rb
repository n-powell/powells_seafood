require 'rails_helper'

describe "adds review path" do


  it "adds a review as admin" do
    visit root_path
    user = FactoryGirl.create(:user)
    click_on 'Products'
    fill_in 'Email', :with => 'nick@gmail.com'
    fill_in 'Password', :with => 'qqqqqq'
    click_on 'Log in'
    product = FactoryGirl.create(:product)
    click_on 'Products'
    click_on 'Lobster'
    fill_in 'Comment', :with => 'Fantastic price point.'
    click_on 'Create Review'
    expect(page).to have_content "Review successfully added!"
  end

end
