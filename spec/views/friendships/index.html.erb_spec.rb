require 'rails_helper'

RSpec.describe "friendships/index", type: :view do
  before(:each) do
    assign(:friendships, [
      create(:friendship),
      create(:friendship)
    ])
  end

  it "renders a list of friendships" do
    render
    #
  end
end
