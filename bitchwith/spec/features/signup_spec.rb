require 'spec_helper'

describe "New user" do

  before :each do
    visit root_path
  end

  it "signs up" do
    click_link("Sign up")
    current_path.should eq new_user_path 
    fill_in("Email", :with => 'theo@example.com')
    fill_in("Username", :with => 'Theo')
    fill_in("Password", :with => 'secretpass')
    fill_in("Password Confirmation", :with => 'secretpass')
    click_button("Create User")
    current_path.should eq root_path
    page.should have_content 'successfully'
  end
 
end
