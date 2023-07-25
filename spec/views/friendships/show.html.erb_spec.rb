require 'rails_helper'

RSpec.describe "friendships/show", type: :view do
  before(:each) do
    assign(:friendship, create(:friendship))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
