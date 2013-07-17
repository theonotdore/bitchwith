require 'spec_helper'


describe "bitchings#index" do

  it "is the home page" do
    expect('/').to eq(root_path)
  end

end
