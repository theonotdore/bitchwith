require 'spec_helper'

describe "New session" do

  before { 
    visit root_path
    user = User.new(:email => 'theo@example.com',
                    :username => 'Theo',
                    :password => 'secretpass',
                    :password_confirmation => 'secretpass')
    user.save!
  }


  it "is created" do

    click_link 'Login'
    current_path.should eq new_session_path
    fill_in 'Email', :with => 'theo@example.com'
    fill_in 'Password', :with => 'secretpass'
    click_button 'Login'
    current_path.should eq root_path
    page.should have_content user.email

  end



end
