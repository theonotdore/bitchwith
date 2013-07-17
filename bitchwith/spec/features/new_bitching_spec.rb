require 'spec_helper'


describe "New bitching" do

  before { 
    visit root_path
    user = User.new(:email => 'theo@example.com',
                    :username => 'Theo',
                    :password => 'secretpass',
                    :password_confirmation => 'secretpass')
    user.save!
  }


  it "is created" do

    click_link 'Start bitching!'
    current_path.should eq new_bitching_path
    fill_in 'Title', :with => 'I hate trolls!'
    select 'Image link', :from => 'Type'
    fill_in 'Image Link', :with => 'http://somesite.com/someimage.jpg'
    fill_in 'The beef', :with => 'I hate those damn trolls, dammit!'
    click_button 'Create Bitching'

  end


end
